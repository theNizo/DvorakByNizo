[english instructions here](README.english.md)

Aufgrund des AltGr Layers nicht [damit](https://github.com/kentonv/dvorak-qwerty) kompatibel.

# Installation auf Windows

Unter [Releases](https://github.com/theNizo/DvorakByNizo-German/releases) die neueste version für Windows herunterladen, entpacken und `setup.exe` ausführen. Aus- und wieder einloggen.

## Layout einstellen

[Deutscher Guide](https://community.acer.com/de/kb/articles/70-windows-10-tastaturlayout-aendern), [englischer Guide](https://www.windowscentral.com/how-change-your-keyboard-layout-windows-10)

## Layout auf Windows 10 AME einstellen

[AME](https://ameliorated.info/) hat kein visuelles Menü.

Ich werde als Beispiel-ID folgende nehmen: `0c07:A0010c07` - Diese bitte durch die im Release angegebene ersetzen. (IDs können herausgefunden werden, indem man in einem unmodifizierten Windows 10 [ein Standard-Layout setzt](https://winaero.com/set-default-keyboard-layout-windows-10/) und dann den folgenden Befehl in die Powershell eingibt: `Get-WinDefaultInputMethodOverride`).

1. Powershell: `Set-WinDefaultInputMethodOverride -InputTip "0c07:A0010c07"`
1. (Nur auf Englisch probiert) Win+I -> Devices -> Typing -> Advanced Keyboard Settings -> Standard Layout auf "Dvorak by Nizo" setzen.

Quellen:

* https://docs.microsoft.com/en-us/powershell/module/international/get-windefaultinputmethodoverride?view=win10-ps
* https://docs.microsoft.com/en-us/powershell/module/international/set-windefaultinputmethodoverride?view=win10-ps

## Layout bei Login verwenden

(Setzt vorraus, dass DBN als Standard-layout eingestellt ist)

Control Panel -> Region -> Administrative -> Copy Settings -> "Welcome screen and system accounts" auswählen -> Ok

## Fn Layer installieren

Es ist in beiden Fällen ein AutoHotKey Skript, der erste Weg benötigt keine Installation von AutoHotKey.

**Option 1:** .exe herunterladen

**Option 2:** [AutoHotKey](https://www.autohotkey.com/) installieren und .ahk Skript herunterladen. Wenn AHK die Umlaute nicht erkennt, ist die Datei nicht UTF-8-BOM (BOM ist wichtig) oder UTF-16 formattiert. In [Notepad++](https://notepad-plus-plus.org/) kann man das sehr gut ändern.

**Autostart:** Windows+R -> `shell:startup` - Datei in geöffneten Ordner verschieben. Damit wird das Skript nach Login ausgeführt.

## Bekannte Probleme

`AltGr = Strg+Alt` - Dementsprechend entsteht dabei ein Problem mit Shortcuts in manchen Programmen.

**Keepass:** Keepass hat normalerweise die Shortcuts `Strg+Alt+A` und `Strg+Alt+Shift+A`., wodurch `(` und `{` blockiert werden. Ich persönlich habe die Shortcuts in KeePass rausgenommen, weil ich sie nicht brauche. Alternativ kann [KeepassXC](https://keepassxc.org/) verwendet werden, eine FOSS Fork von Keepass.

**Diverse IDEs:** ...nehme ich mal an. Speziell bei IntelliJ musste ich ein paar Shortcuts rausnehmen, damit mein Layout gut funktioniert.
