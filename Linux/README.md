## Installation auf Linux

Das Layout ersetzt Dvorak Type II, welches als "German (Dvorak)" genannt wird.

Die Linux Version wird nicht über Releases veröffentlicht.

1. Folgende Befehle ausführen:
```
wget https://raw.githubusercontent.com/theNizo/DvorakByNizo-German/master/dbn-install.sh && chmod +x dbn-install.sh && ./dbn-install.sh && rm dbn-install.sh
```
2. (Optional) Backup woanders hinlegen. Das Skript warnt aber auch nächstes Mal.
3. Aus- und wieder einloggen
4. Layout einstellen (per GUI, oder mit `setxkbmap de -variant  dvorak` unter X.org)
5. (Falls Fn unter Gnome): Gnome Tweaks (`gnome-tweaks`) -> Tastatur & Maus -> Zusätzliche Layout Optionen: 3. Layer - Caps; 5. Layer - AltGr

**Automatisierung**

Das Skript läuft ohne nachzufragen durch, wenn es 3 Argumente bekommt. Diese lauten wie folgt:

| | Fn Layer | key.Type | Backup erstellen |
|--- |--- |--- |--- |
| **Ja** | fn | type | bak |
| **Nein** | nofn | notype | nobak |

(Das Skript überprüft nicht, ob eine Internetverbindung besteht und nimmt generell an, dass die Dateien erfolgreich heruntergeladen werden.)
