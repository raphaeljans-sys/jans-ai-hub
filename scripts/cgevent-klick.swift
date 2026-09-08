// Echter Mausklick per CGEvent (mit clickState), fuer Catalyst-Apps, die System-Events-Klicks ignorieren.
// Aufruf: klick <x> <y> [anzahl]   (Koordinaten in Bildschirmpunkten, Ursprung oben links)
import Foundation
import CoreGraphics
let args = CommandLine.arguments
guard args.count >= 3, let x = Double(args[1]), let y = Double(args[2]) else { print("Aufruf: klick x y [anzahl]"); exit(1) }
let n = args.count >= 4 ? Int(args[3]) ?? 1 : 1
let p = CGPoint(x: x, y: y)
let move = CGEvent(mouseEventSource: nil, mouseType: .mouseMoved, mouseCursorPosition: p, mouseButton: .left)
move?.post(tap: .cghidEventTap); usleep(120000)
for i in 1...n {
    let down = CGEvent(mouseEventSource: nil, mouseType: .leftMouseDown, mouseCursorPosition: p, mouseButton: .left)
    down?.setIntegerValueField(.mouseEventClickState, value: Int64(i)); down?.post(tap: .cghidEventTap); usleep(60000)
    let up = CGEvent(mouseEventSource: nil, mouseType: .leftMouseUp, mouseCursorPosition: p, mouseButton: .left)
    up?.setIntegerValueField(.mouseEventClickState, value: Int64(i)); up?.post(tap: .cghidEventTap); usleep(90000)
}
print("geklickt \(n)x bei \(x),\(y)")
