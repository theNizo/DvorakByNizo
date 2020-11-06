Windows version made wit [MSKLC](https://www.microsoft.com/en-us/download/details.aspx?id=22339) (doesn't work in the latest Win10 version afaik. I have a Win7 VM just to run this program.)

Linux version made by finding out how xkb works by reverse engineering and trying. [Here's a cheatsheet I made.](https://github.com/thenizo/xkb-symbols-reference)

# Dvorak by Nizo

## Deutsch (english part below)

Dies ist ein eigenes Tastaturlayout, welches auf [Dvorak](https://de.wikipedia.org/wiki/Dvorak-Tastaturbelegung) basiert. Für Deutsch angepasst. Cheatsheet: Die PNG Datei

Das Projekt habe ich irgendwann 2017-2018 gestartet und habe das Layout über die Zeit angepasst.

**Warum nicht Dvorak Type II:** Ich habe ursprünglich das englische gelernt, bei dem allerdings keine Umlaute sind. Das Englische und Type II sind aber zu verschieden (~ 3x zwei Tasten vertauscht). ß ist unpraktisch platziert. Außerdem werden ein paar zeichen unnötig wiederholt (@ gibt's 4 mal im AltGr Layer, was ich deppert finde.). Dvorak by Nizo soll einen einfachen Zugriff auf alle benötigten Zeichen geben und gleichzeitig so nahe wie möglich an US Dvorak sein.

Ich verwende das unter Windows in Kombination mit einer [Erweiterung](https://github.com/theNizo/NizosUltimateKeyboard) (Vorwarnung: wird ungewöhnlich, andere Tastaturen zu verwenden, geht aber). Diese ist bei Linux bereits implementiert, kann aber ignoriert werden.

#### Falls jemand mir bei Linux helfen möchte, bitte ich darum. Die Person wird selbstverständlich erwähnt werden.

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

#### "Aber ich benutze Windows 10 Ameliorated"

[AME](https://ameliorated.info/) hat den Nachteil, dass es kein Menü zum Einstellen der Tastatur-Layouts gibt. Im FAQ von AME wird empfohlen, die Powershell zu verwenden.

Für mein Layout braucht man allerdings eine andere Herangehensweise, als im FAQ gezeigt. (Auf dem zur Verfügung gestellten 1903 Image getestet)

1. Auf einer normalen Windows Installation (nicht AME) folgenden Powershell Befehl ausführen: [`Get-WinDefaultInputMethodOverride`](https://docs.microsoft.com/en-us/powershell/module/international/get-windefaultinputmethodoverride?view=win10-ps)
2. gibt folgende Nummer: `2000:A0000C07`
3. Powershell: [`Set-WinDefaultInputMethodOverride -InputTip "2000:A0000C07"`](https://docs.microsoft.com/en-us/powershell/module/international/set-windefaultinputmethodoverride?view=win10-ps)
4. Das Layout kann man nun verwenden
5. (Nur auf Englisch probiert) Win+I -> Devices -> Typing -> Advanced Keyboard Settings -> Standard Layout auf "Dvorak by Nizo" setzen
6. Das Layout ist nun Standard
7. Control Panel -> Region -> Administrative -> Copy Settings -> Tick "Welcome screen and system accounts" -> Ok
8. Das Layout ist nun auf dem Login Bildschirm verwendbar.

#### Linux

Am liebsten würde ich in den Einstallungen einen neuen Eintrag mit dem Titel "Dvorak by Nizo" haben, aber ich weiß nicht, wie ich das hinbekomme. Deshalb sind die aktuellen Versionen für mich Beta Versionen. Aktuell ersetzt das Layout das deutsche Dvorak Layout, welches ich, ehrlich gesagt, sowieso furchtbar finde.

Die aktuellste Version der Datei wird nicht mehr in den Releases veröffentlicht.

1. Folgende Befehle ausführen:
```
wget https://raw.githubusercontent.com/theNizo/DvorakByNizo-German/master/install-dvorakbynizo.sh
chmod u+x install-dvorakbynizo.sh
sudo ./install-dvorakbynizo.sh
```
2. Erneut einloggen
3. Sofern das Skript das erste Mal gestartet wurde, sollte man das Backup (.bak) woanders hinlegen, da es ansonsten überschrieben wird.
4. Eventuell Layout einstellen
5. Dvorak by Nizo verwenden

EDIT: Ich habe gerade einen Bug gefunden, wodurch der Layer 5 nicht verwendet werden kann. Wenn man Gnome benutzt, muss man in den Gnome Tweaks -> Tastatur und Maus -> Zusätzliche Layout Optionen als Taste für den 5. Layer AltGr auswählen, dann geht es ohne Probleme. Caps als Layer 3 verwenden.

------

## English

This is a german [Dvorak](https://en.wikipedia.org/wiki/Dvorak_Simplified_Keyboard) Keyboard Layout made by me. For a cheatsheet, see the PNG in the root

This project started somewhere between 2017-2018. It was improved over time.

**Why not Dvorak Type II:** I originally learned the english Dvorak, which doesn't have umlauts. But Type II is just too different (they switched two keys. ~3 times.). ß is placed at a bad position. Also, some letters are repeated unnecessarily (@ appears 4 times in the AltGr layer, which is pretty stupid if you ask me.). Dvorak by Nizo should provide the most used symbols at comfortable places while being as near to US Dvorak as possible.

On Windows, I'm using it with an [extension](https://github.com/theNizo/NizosUltimateKeyboard) (Note: It will get harder to use other keybeards if you get used to it). This is already included in Linux, but can be safely ignored if you wish.

#### If someone wants to help me with the Linux port, I'd be happy to have some help. Of course you'll be mentioned.

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

#### "But I'm using Windows 10 Ameliorated"

[AME](https://ameliorated.info/) has the disadvantage of not having an interface for selecting an input method. The FAQ of AME recommends to do it with Powershell.

For my layout, you need a different approach than shown in the FAQ. (Tested on the downloadable 1903 image)

1. On a default Windows installation (not AME) with Dvorak by Nizo set to default, execute in Powershell: [`Get-WinDefaultInputMethodOverride`](https://docs.microsoft.com/en-us/powershell/module/international/get-windefaultinputmethodoverride?view=win10-ps)
2. gives you this number: `2000:A0000C07`
3. Powershell: [`Set-WinDefaultInputMethodOverride -InputTip "2000:A0000C07"`](https://docs.microsoft.com/en-us/powershell/module/international/set-windefaultinputmethodoverride?view=win10-ps)
4. You can now use the layout
5. Win+I -> Devices -> Typing -> Advanced Keyboard Settings -> Set the default layout to "Dvorak by Nizo"
6. The layout is now the default one.
7. Control Panel -> Region -> Administrative -> Copy Settings -> Tick "Welcome screen and system accounts" -> Ok
8. The Layout is now available on the login screen.

#### Linux

I'd like to have my own entry in the settings menu, called "Dvorak by Nizo", but as of now, I don't know how to do that. That's why I declare the current versions as beta versions. The layout currently replaces the german Dvorak variant which I think is horrible anyway.

The newest version of the file won't be showing up in the Releases.

1. Run the following commands:
```
wget https://raw.githubusercontent.com/theNizo/DvorakByNizo-German/master/install-dvorakbynizo.sh
chmod u+x install-dvorakbynizo.sh
sudo ./install-dvorakbynizo.sh
```
2. Log in again
3. If it's the first time you run it, please move the backup (.bak) somewhere else, or it will be overwritten.
5. if not done yet, select Layout
6. Profit

EDIT: I just found a bug that doesn't let you use layer 5. if you use Gnome, go to Gnome Tweaks -> Keyboard & Mouse -> Additional Layout options -> key to choose the 5th level and select Right Alt.
