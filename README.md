[english README here](README.english.md)

# Dvorak by Nizo

German Dvorak done properly

![Standard Layer](img/0-default.png)

<details>
<summary>AltGr + Fn Layer</summary>

![AltGr Layer](img/1-alt.png)

(Nicht aktuell - "Meidlinger L" fehlt)

![Fn Layer (optional)](img/2-fn.png)
</details>

# Installation

* [Linux](Linux/README.md)
* [Windows](Windows/README.md)
* [Mac](macOS/README.md)

# Warum nicht Dvorak Type II?

* Ich habe die englische Version von Dvorak gelernt. Ein paar Buchstaben sind vertauscht: `E-I`, `D-H`, `R-T`; `Z` und `L` sind falsch.
* `@` ist 4x im AltGr Layer - Warum?
* `ß` ist unpraktisch platziert (Shift).

# Aber was macht dieses Layout besser?

* Nahe an der englischen Version - keine große Umstellung nötig
* viele Sonderzeichen einfach zu erreichen
* Optionaler Fn Layer
* Möglichkeit für einhändiges Kopieren, Ausschneiden und Einfügen (nicht überall verfügbar)
* Bonus: `Å` für Dialekte

# Welche Tools/Software wurde(n) verwendet?

**Layout-Bilder:** [Keyboard Layout Editor](http://www.keyboard-layout-editor.com/)

**Linux:** Text Editor, Reverse Engineering, [An Unreliable Guide to XKB configuration](https://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.600.7058), [eigenes Cheatsheet](https://github.com/thenizo/xkb-symbols-reference)

**Windows:** [MSKLC](https://www.microsoft.com/en-us/download/details.aspx?id=22339), [AutoHotKey](https://www.autohotkey.com/)

**macOS:** [Ukelele](https://software.sil.org/ukelele/)

## QMK/Programmierbare Tastaturen für Fn

Die meisten mechanischen Tastaturen sind mit QMK programmierbar und können den Fn Layer so übernehmen. Eine physische Tastatur kann das wesentlich besser.

Ich gehe die Tasten der Reihe nach durch:

| Keycode       | Beschr.          |
|---------------|------------------|
| KC_WH_U       | rauf scrollen    |
| KC_WH_D       | runter scrollen  |
| KC_INS        | Einfügen         |
| KC_HOME       | Pos1             |
| LCTL(KC_LEFT) | Strg+Links       |
| LCTL(KC_RGHT) | Strg+Rechts      |
| KC_END        | Ende             |
| KC_PAUS       | Pause            |
| KC_ESC        | Escape           |
| KC_MPRV       | Media Prev.      |
| KC_MPLY       | Media Play/Pause |
| KC_MNXT       | Media Next       |
| KC_BSPC       | Backspace        |
| KC_LEFT       | Links            |
| KC_DOWN       | Unten            |
| KC_UP         | Oben             |
| KC_RGHT       | Rechts           |
| KC_DEL        | Entfernen        |
| KC_SLCK       | Scroll-Lock      |
| LCTL(KC_B)    | Strg + X         |
| LCTL(KC_I)    | Strg + C         |
| LCTL(KC_DOT)  | Strg + V         |
| KC_ENT        | Enter            |
| KC_MUTE       | Stumm schalten   |
| KC_VOLD       | leiser           |
| KC_VOLU       | lauter           |
| KC_PGUP       | Bild Rauf        |
| KC_PGDN       | Bild Runter      |
