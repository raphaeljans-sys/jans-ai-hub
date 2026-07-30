#!/usr/bin/env node
/**
 * JANS Geo-SZ-Connector — OEREB-Auszug Kanton Schwyz
 *
 * EINE WAHRHEIT (30.07.2026, Entscheid Raphael): Dieser Skill hatte bis zum 30.07.2026 eine
 * eigene, sieben Wochen alte Abspaltung des Connectors (Stand 07.06.2026) und arbeitete damit
 * ohne Parzellensuche, Grundwasser-Abfrage, HTTP-204-Diagnose und lokales Datum. Die gepflegte
 * Fassung liegt unter skills/planungsgrundlagen/connectors/geo-sz.mjs und wird hier nur noch
 * eingebunden — bitte NICHT wieder aufspalten, sondern dort weiterentwickeln.
 *
 * Warum eine Weiterleitungsdatei und kein Symlink: Ein echter Symlink wird vom macOS-SMB-Client
 * als «XSym»-Textdatei auf das NAS geschrieben. Der native Synology-Committer erfasst diese dann
 * als regulaeren Dateiinhalt, und jeder Klon zieht sich eine kaputte 1-KB-Datei statt des
 * Connectors (belegt und behoben am 30.07.2026). Eine Weiterleitungsdatei ist ueber SMB, ext4
 * und Git gleichermassen unauffaellig.
 *
 * Der Import fuehrt das Ziel-Script aus; process.argv wird unveraendert durchgereicht, die
 * Aufrufe bleiben also identisch (z.B. --parzelle "Wangen 123").
 */
import "../../planungsgrundlagen/connectors/geo-sz.mjs";
