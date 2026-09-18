// macbook-wecker.swift — weckt das Display des MacBook Pro, sobald am Mac Mini
// das Display aufwacht oder der Bildschirm entsperrt wird.
//
// Ereignisgesteuert (kein Polling): haengt an NSWorkspace.screensDidWake und an
// der Distributed Notification com.apple.screenIsUnlocked. Der Weckbefehl ist
// derselbe wie in scripts/macbook-wecken.sh: `ssh macbook 'caffeinate -u -t 90'`.
//
// Bauen (auf dem Mac Mini, Binary liegt lokal, damit der Dienst nicht am
// NAS-Mount haengt):
//   swiftc -O /Volumes/daten/jans-ai-hub/scripts/macbook-wecker/macbook-wecker.swift \
//          -o ~/bin/macbook-wecker
// Dienst: templates/launchd/ch.jans.macbook-wecker.plist

import AppKit
import Foundation

let logURL = FileManager.default.homeDirectoryForCurrentUser
    .appendingPathComponent("Library/Logs/macbook-wecker.log")
var letzterWeckruf = Date.distantPast
let sperre = NSLock()

func log(_ text: String) {
    let f = DateFormatter()
    f.dateFormat = "yyyy-MM-dd HH:mm:ss"
    let zeile = "\(f.string(from: Date())) \(text)\n"
    // Log klein halten: ueber 200 kB neu beginnen
    if let attr = try? FileManager.default.attributesOfItem(atPath: logURL.path),
       let groesse = attr[.size] as? Int, groesse > 200_000 {
        try? FileManager.default.removeItem(at: logURL)
    }
    if let h = try? FileHandle(forWritingTo: logURL) {
        h.seekToEndOfFile()
        h.write(zeile.data(using: .utf8)!)
        try? h.close()
    } else {
        try? zeile.write(to: logURL, atomically: true, encoding: .utf8)
    }
}

func wecken(_ anlass: String) {
    // Aufwachen und Entsperren feuern oft kurz nacheinander: 20 s entprellen
    sperre.lock()
    let jetzt = Date()
    if jetzt.timeIntervalSince(letzterWeckruf) < 20 {
        sperre.unlock()
        return
    }
    letzterWeckruf = jetzt
    sperre.unlock()

    DispatchQueue.global().async {
        let p = Process()
        p.executableURL = URL(fileURLWithPath: "/usr/bin/ssh")
        p.arguments = ["-o", "BatchMode=yes", "-o", "ConnectTimeout=6",
                       "macbook", "caffeinate -u -t 90"]
        p.standardOutput = FileHandle.nullDevice
        p.standardError = FileHandle.nullDevice
        do {
            try p.run()
            p.waitUntilExit()
            log("\(anlass): ssh rc=\(p.terminationStatus)")
        } catch {
            log("\(anlass): ssh nicht startbar (\(error.localizedDescription))")
        }
    }
}

NSWorkspace.shared.notificationCenter.addObserver(
    forName: NSWorkspace.screensDidWakeNotification, object: nil, queue: nil
) { _ in wecken("Display wach") }

DistributedNotificationCenter.default().addObserver(
    forName: Notification.Name("com.apple.screenIsUnlocked"), object: nil, queue: nil
) { _ in wecken("entsperrt") }

log("gestartet")
RunLoop.main.run()
