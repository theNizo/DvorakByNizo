[Deutsche README hier](README.md)

# Dvorak by Nizo

German Dvorak done properly

![Standard Layer](img/0-default.png)

<details>
<summary>AltGr + Fn Layer</summary>

![AltGr Layer](img/1-alt.png)

![Fn Layer (optional)](img/2-fn.png)
</details>

# Why not Dvorak Type II?

* I learned the english version. Some characters are switched: `E-I`, `D-H`, `R-T`; `Z` and `L` are wrong
* `@` is in the AltGr Layer 4x - Why?
* `ß` is placed inconveniently (Shift).

# But what does this layout do better?

* Close to the english version - not much relearning necessary
* Special characters are easier to reach
* Optional Fn layer

# What tools/software did you use?

**Linux:** Text Editor, reverse engineering, [An Unreliable Guide to XKB configuration](https://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.600.7058), [my own Cheatsheet](https://github.com/thenizo/xkb-symbols-reference)

**Windows:** [MSKLC](https://www.microsoft.com/en-us/download/details.aspx?id=22339), [AutoHotKey](https://www.autohotkey.com/)

# Installation

## Linux

The layout replaces Dvorak Type II, which shows up as "German (Dvorak)".

The Linux version does not get published via releases.

1. Run the following commands:
```
wget https://raw.githubusercontent.com/theNizo/DvorakByNizo-German/master/dbn-install.sh && chmod +x dbn-install.sh && ./dbn-install.sh && rm dbn-install.sh
```
1. (Optional) Move the Backup. The script will warn you next time though.
1. Logout, Login
1. Set layout (via GUI, oder run `setxkbmap de -variant  dvorak`, if you use X.org)
1. (If you use Fn in Gnome): Gnome Tweaks (`gnome-tweaks`) -> Keyboard & Mouse -> Additional Layout Options: 3. Layer - Caps; 5. Layer - AltGr

**Automatic stuff**

My script runs without asking, if it gets 3 arguments. These are called:

| | Fn Layer | key.Type | create backup |
|--- |--- |--- |--- |
| **Yes** | fn | type | bak |
| **No** | nofn | notype | nobak |

(The script doesn't test your Internet connection and assumes that all files will/have downloaded properly.)

## Windows

Not compatible with [this](https://github.com/kentonv/dvorak-qwerty), because of the AltGr layer.

### Installation

Download the newest version from [releases](https://github.com/theNizo/DvorakByNizo-German/releases), unzip and run `setup.exe`. Logout, login.

### Set layout

[Guide](https://www.windowscentral.com/how-change-your-keyboard-layout-windows-10)

### Set layout in Windows 10 AME

[AME](https://ameliorated.info/) doesn't have a GUI for that.

My layout has the ID `2000:A0000C07` (figured out with `Get-WinDefaultInputMethodOverride`)

1. Powershell: `Set-WinDefaultInputMethodOverride -InputTip "2000:A0000C07"`
1. Win+I -> Devices -> Typing -> Advanced Keyboard Settings -> Set default layout to "Dvorak by Nizo"

* https://docs.microsoft.com/en-us/powershell/module/international/get-windefaultinputmethodoverride?view=win10-ps
* https://docs.microsoft.com/en-us/powershell/module/international/set-windefaultinputmethodoverride?view=win10-ps

### Layout bei Login verwenden

(Assuming you set DBN as default layout.)

Control Panel -> Region -> Administrative -> Copy Settings -> Tick "Welcome screen and system accounts" -> Ok

### Install Fn Layer (broken)

[My Script](https://github.com/theNizo/Nizo-Keyboard-Extension) is currently broken, although I used exactly that. That's why it's not in this repo. I don't use Windows nowadays, so this is a low priority for me.

In both cases it's an AutoHotKey Script. The first Option doesn't need AutoHotKey installed.

**Option 1:** download the .exe

**Option 2:** Install [AutoHotKey](https://www.autohotkey.com/) and download the .ahk

**Autostart:** Windows+R -> `shell:startup` - Move the file in the folder that just opened. The script will now start after login.

## macOS

Doesn't exist currently. I recently discovered Ukulele and will take a look at it. I don't use Macs, so this can take some time.

If someone else wants to port my layout, go ahaed. I would mention you, of course.

## QMK/Programmable Keyboards for Fn

A lot of mechanical keyboards are programmable und can implement the Fn layer this way. The keyboard can handle it way better.

I'll go
I will go through the keys in order

| Keycode       | Beschr.          |
|---------------|------------------|
| KC_WH_U       | scroll up    |
| KC_WH_D       | scroll down  |
| KC_INS        | Insert      |
| KC_HOME       | Home             |
| LCTL(KC_LEFT) | Ctrl+Left       |
| LCTL(KC_RGHT) | Ctrl+Right      |
| KC_END        | End             |
| KC_PAUS       | Pause            |
| KC_ESC        | Escape           |
| KC_MPRV       | Media Prev.      |
| KC_MPLY       | Media Play/Pause |
| KC_MNXT       | Media Next       |
| KC_BSPC       | Backspace        |
| KC_LEFT       | Left            |
| KC_DOWN       | Down            |
| KC_UP         | Up             |
| KC_RGHT       | Right           |
| KC_DEL        | Delete        |
| KC_SLCK       | Scroll-Lock      |
| KC_ENT        | Enter            |
| KC_MUTE       | Mute   |
| KC_VOLD       | Vol. Down           |
| KC_VOLU       | Vol. Up        |
| KC_PGUP       | Page Up        |
| KC_PGDN       | Page Down      |
