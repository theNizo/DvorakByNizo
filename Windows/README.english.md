[Deutsche Anleitung hier](README.md)

Not compatible with [this](https://github.com/kentonv/dvorak-qwerty), because of the AltGr layer.

# Installation on Windows

Download the newest version for Windows from [releases](https://github.com/theNizo/DvorakByNizo-German/releases), unzip and run `setup.exe`. Logout, login.

## Set layout

[Guide](https://www.windowscentral.com/how-change-your-keyboard-layout-windows-10)

## Set layout in Windows 10 AME

[AME](https://ameliorated.info/) doesn't have a GUI for that.

I will use the following ID as an example: `0c07:A0010c07` - Replace it with the ID listed in the release. (IDs can be figured out by [setting a default override](https://winaero.com/set-default-keyboard-layout-windows-10/) on an unmodified Windows 10, then running `Get-WinDefaultInputMethodOverride` in powershell.)

1. Powershell: `Set-WinDefaultInputMethodOverride -InputTip "0c07:A0010c07"`
1. Win+I -> Devices -> Typing -> Advanced Keyboard Settings -> Set default layout to "Dvorak by Nizo".

Sources:

* https://docs.microsoft.com/en-us/powershell/module/international/get-windefaultinputmethodoverride?view=win10-ps
* https://docs.microsoft.com/en-us/powershell/module/international/set-windefaultinputmethodoverride?view=win10-ps

## Use the layout on login screen

(Assuming you set DBN as default layout.)

Control Panel -> Region -> Administrative -> Copy Settings -> Tick "Welcome screen and system accounts" -> Ok

## Install Fn Layer

In both cases it's an AutoHotKey Script. The first Option doesn't need AutoHotKey installed.

**Option 1:** download the .exe

**Option 2:** Install [AutoHotKey](https://www.autohotkey.com/) and download the .ahk. If AHK can't recognize umlauts or `ß`, it's not formatted UTF-8-BOM (BOM is important) or UTF-16. You can change this with [Notepad++](https://notepad-plus-plus.org/), for example.

**Autostart:** Windows+R -> `shell:startup` - Move the file in the folder that just opened. The script will now start after login.

## Known Issues

`AltGr = Ctrl+Alt` - Because of that, some issues with shortcuts appear in some applications.

**Keepass:** Keepass usually has `Ctrl+Alt+A` and `Ctrl+Alt+Shift+A` as shortcuts, which blocks `(` and `{` as they are located on `A`. On my system I just removed the shortcuts from KeePass. An alternative way is to use [KeepassXC](https://keepassxc.org/), a FOSS fork of Keepass.

**IDEs and stuff:** ...I guess. I can specifically tell about issues with shortcuts in IntelliJ, that I also just removed. I didn't use them anyway.
