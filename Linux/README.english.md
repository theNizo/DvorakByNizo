[Deutsche Anleitung hier](README.md)

# Install on Linux

The layout replaces Dvorak Type II, which shows up as "German (Dvorak)".

The Linux version does not get published via releases.

1. Run the following commands:
```
wget https://raw.githubusercontent.com/theNizo/DvorakByNizo-German/master/dbn-install.sh && chmod +x dbn-install.sh && ./dbn-install.sh && rm dbn-install.sh
```
2. (Optional) Move the backup. The script will warn you next time though.
3. Logout, login
4. Set layout (via GUI, oder run `setxkbmap de -variant  dvorak`, if you use X.org)
5. (If you use Fn in Gnome): Gnome Tweaks (`gnome-tweaks`) -> Keyboard & Mouse -> Additional Layout Options: 3. Layer - Caps; 5. Layer - AltGr

## Automate stuff

The script runs without asking, if it gets 3 arguments. These are called:

| | Fn Layer | key.Type | create backup |
|--- |--- |--- |--- |
| **Yes** | fn | type | bak |
| **No** | nofn | notype | nobak |

(The script doesn't test your internet connection and assumes that all files will/have download(ed) properly.)
