Windows version made wit [MSKLC](https://www.microsoft.com/en-us/download/details.aspx?id=22339) (doesn't work in the latest Win10 version afaik. I have a Win7 VM just to run this program.)

Linux version made by finding out how xkb works by reverse engineering and trying. [Here's a cheatsheet I made.](https://github.com/thenizo/xkb-symbols-reference)

# Dvorak by Nizo

## Deutsch (english part below)

Dies ist ein eigenes Tastaturlayout, welches auf [Dvorak](https://de.wikipedia.org/wiki/Dvorak-Tastaturbelegung) basiert. Für Deutsch angepasst. Cheatsheet: Die PNG Datei

Das Projekt habe ich irgendwann 2017-2018 gestartet und habe das Layout über die Zeit angepasst.

**Warum nicht Dvorak Type II:** Ich habe ursprünglich das englische gelernt, bei dem allerdings keine Umlaute sind. Das Englische und Type II sind aber zu verschieden (~ 3x zwei Tasten vertauscht). ß ist unpraktisch platziert. Außerdem werden ein paar zeichen unnötig wiederholt (@ gibt's 4 mal im AltGr Layer, was ich deppert finde.). Dvorak by Nizo soll einen einfachen Zugriff auf alle benötigten Zeichen geben und gleichzeitig so nahe wie möglich an US Dvorak sein.

Ich verwende das in Kombination mit einer [Erweiterung](https://github.com/theNizo/NizosUltimateKeyboard) (Vorwarnung: wird ungewöhnlich, andere Tastaturen zu verwenden, ist aber nicht unmöglich).

#### Falls jemand mir bei Linux helfen möchte, bitte ich darum, er wird in den credits erwähnt werden.

#### Falls jemand das Layout für macOS porten möchte (falls das überhaupt möglich ist), würde es mich sehr freuen. Ich würde das dann in diesem Repo unter dem Namen "Dvorak by Nizo (ported by ...)" zur Verfügung stellen.

### Installation

#### Windows

Das Layout ist aufgrund des AltGr Layers nicht [damit](https://github.com/kentonv/dvorak-qwerty) kompatibel.

1. unter [releases](https://github.com/theNizo/DvorakByNizo-German/releases) die neueste version für Windows herunterladen
2. Entpacken
3. Im Ordner 'setup.exe' ausführen
4. Neu Starten
5. [Layout einstellen](https://www.windowscentral.com/how-change-your-keyboard-layout-windows-10) (hab leider nur auf Englisch was sinnvolles gefunden)
6. Dvorak by Nizo verwenden.

#### Linux

Die Linux version ist im Moment eine Beta Version. Aktuell ersetzt sie Neo2. In Zukunft soll das Layout als zusätzliche Tastatur verfügbar sein.

1. unter [releases](https://github.com/theNizo/DvorakByNizo-German/releases) die neueste Linux version runterladen (ja, nur die eine datei. Nicht umbenennen)
2. ein Backup von der originalen de Datei machen (`sudo cp /usr/shared/X11/xkb/symbols /where/to/save`, /where/to/save muss durch euren gewünschten Speicherpfad ersetzt werden. Ich kann nicht garantieren, dass der erste Pfad auf allen distributionen gleich ist. Ich habe das auf Ubuntu probiert)
3. Folgenden Befehl ausführen: `sudo cp /path/to/file /usr/shared/X11/xkb/symbols` ausführen ("/path/to/file" ist logischerweise der Pfad zur Datei. Erneut kann ich nicht sicher sagen, dass der Pfad für alle Distributionen gleich ist.)
4. Neu Starten
5. Eventuell Layout einstellen
6. Dvorak by Nizo verwenden

EDIT: Ich habe gerade einen Bug gefunden, wodurch der Layer 5 nicht verwendet werden kann. Wenn man Gnome benutzt, muss man in den Gnome Tweaks -> Tastatur und Maus -> Zusätzliche Layout Optionen als Taste für den 5. Layer AltGr auswählen, dann geht es ohne Probleme.

------

This is a german [Dvorak](https://en.wikipedia.org/wiki/Dvorak_Simplified_Keyboard) Keyboard Layout made by me. For a cheatsheet, see the PNG in the root

This project started somewhere between 2017-2018. It was improved over time.

**Why not Dvorak Type II:** I originally learned the english Dvorak, which doesn't have umlauts. But Type II is just too different (they switched two keys. ~3 times.). ß is placed at a bad position. Also, some letters are repeated unnecessarily (@ appears 4 times in the AltGr layer, which is pretty stupid if you ask me.). Dvorak by Nizo should provide the most used symbols at comfortable places while being as near to US Dvorak as possible.

I'm using it with an [extension](https://github.com/theNizo/NizosUltimateKeyboard) (Note: It will get harder to use other keybeards if you get used to it)

#### If someone wants to help me with the Linux port, I'd be happy to have some help. Of course you'll be mentioned in the credits.

#### If someone wants to port it to macOS (if that's possible), I would like to put it into this Repo with the name "Dvorak by Nizo (ported by ...)".

### Installation

#### Windows

This layout is incommpatible with [this](https://github.com/kentonv/dvorak-qwerty), because of the AltGr Layer.

1. Download the newest [releases](https://github.com/theNizo/DvorakByNizo-German/releases) for Windows
2. Extract
3. Run the 'setup.exe'
4. Reboot
5. [Set keyboard Layout](https://www.windowscentral.com/how-change-your-keyboard-layout-windows-10)
6. Done

#### Linux

The Linux version is currently in beta stage. At the moment, it replaces Neo2. In the future, it should be available as another keyboard, not replacing one.

1. Download the newest Linux [release](https://github.com/theNizo/DvorakByNizo-German/releases) (yes, it's just one file. Don't rename it.)
2. Make a Backup of the original file (`sudo cp /usr/shared/X11/xkb/symbols /where/to/save`, /where/to/save must be replaced with the wished path. I can't guarantee that the first path is the same on every distribution. I tried it on Ubuntu)
3. Run this command: `sudo cp /path/to/file /usr/shared/X11/xkb/symbols` ("/path/to/file" must be replaced with the path to the file. Again, I can't guarantee that the second path is the same on every distro).
4. Reboot
5. if not done yet, select Layout
6. Done

EDIT: I just found a bug that doesn't let you use layer 5. if you use Gnome, go to Gnome Tweaks -> Keyboard & Mouse -> Additional Layout options -> key to choose the 5th level and select Right Alt.
