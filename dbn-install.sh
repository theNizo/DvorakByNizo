#!/bin/bash

# Create the working directory, if it doesn't exist, then cd into it
if [ ! -d ~/.DvorakByNizo ]
then
	mkdir ~/.DvorakByNizo
fi
cd  ~/.DvorakByNizo

##################
# Check for args #
##################

if [ $# -eq 0 ]
then

	clear

	#################################
	# Choose the installer language #
	#################################
	cat << language
[1] Deutsch
[2] English
[Q] Quit

language

	# Get user input, then set an array with all the strings
	while true; do
		read -p 'Selection [1/2/Q]:' lang
		case $lang in
			1)
			
	text=("Ungültige Eingabe"
"Auswahl"

"Dieses Skript installiert das \"Dvorak by
Nizo (German)\" Layout, wodurch es Dvorak
Type II überschreibt.

[1] Mit FN Layer
[2] Ohne FN Layer
[Q] Stop"

"Benutzen sie ein DE/einen WM, der/die
key.type benötigt?

GNOME    - beides geht
KDE      - ?
Xfce     - No
LXDE     - ?
MATE     - ?
Cinnamon - ?
i3       - Yes"

"Es existiert bereits ein Backup.
Soll dieses überschrieben werden?
(Dieses Skript erstellt kein
Backup eines Backups)"
"Nein"
"Ja"
"Backup erstellen/überschreiben (automatisch
ausgewählt, falls keines bisher
existiert)"
"Fortfahren?"
"Erstelle Backup..."
"Downloaden benötigter Dateien..."
"Zusammenstellen der Datei..."
"Das Layout ist installiert. Bitte ausloggen und wieder einloggen, danach das Layout auf \"Deutsch (Dvorak)\" stellen.")

		break
		;;
		2)
		
text=("Invalid input"
"Selection"

"This script will install the \"Dvorak by
Nizo (German)\" layout by overriding
Dvorak Type II

[1] With FN Layer
[2] Without FN Layer
[Q] Quit"

"Do you use a DE/WM that needs key.type?

GNOME    - choose either
KDE      - ?
Xfce     - No
LXDE     - ?
MATE     - ?
Cinnamon - ?
i3       - Yes"

"There's already a backup.
Override it? (This script can't
backup a backup)"
"No"
"Yes"
"Create/override backup (chosen automatically
if there is none)"
"Is this correct?"
"Creating backup..."
"Downloading needed files..."
"Building file..."
"All done. Please log out and back in, then set the layout to German (Dvorak).")

				break
				;;
			[qQ]*)
				echo "exiting..."
				exit 1
				;;
				*)
				echo 'Invalid input' >&2
				echo
		esac
	done

	clear

	###########
	# Start   #
	# 1 - yes #
	# 0 - no  #
	###########

	#############
	# Ask stuff #
	#############

	# Ask for FN layer
	echo "${text[2]}"
	echo
	while true; do
		read -p "${text[1]} [1/2/Q]: " fn
		case $fn in
			1)
			break
			;;
			2)
			fn=0
			break
			;;
			[qQ])
			echo "exiting..."
			exit 1
			;;
			*)
			echo ${text[0]} >&2
		esac
	done

	clear

	# Ask for key.type
	echo "${text[3]}"
	echo
	while true; do
		read -p "${text[1]} [y/n]: " yn
		case $yn in
			[yY])
			keytype=1
			break
			;;
			[nN])
			keytype=0
			break
			;;
			*)
			echo ${text[0]} >&2
		esac
	done

	# Check for backup
	backup=1
	if [ -f ~/.DvorakByNizo/de.bak ]
	then
		echo
		while true; do
			read -p "${text[4]} [y/n]: " yn
			case $yn in
				[yY])
				break
				;;
				[nN])
				backup=0
				break
				;;
				*)
				echo ${text[0]} >&2
			esac
		done
	fi

	clear

	#Ask for confirmation
	echo "FN: ${text[$((5 + $fn))]}"
	echo "key.type: ${text[$((5 + $keytype))]}"
	echo "${text[7]}: ${text[$((5 + $backup))]}"
	echo
	while true; do
		read -p "${text[8]} [y/n]: " conf
		case $conf in
			[yY])
			break
			;;
			[nN])
			echo "exiting..."
			exit 1
			;;
			*)
			echo ${text[0]} >&2
		esac
	done
else
	for arg in $@
	do
		case $arg in
			fn)
			fn=1
			;;
			nofn)
			fn=0
			;;
			type)
			keytype=1
			;;
			notype)
			keytype=0
			;;
			bak)
			backup=1
			;;
			nobak)
			backup=0
			;;
			*)
			echo "Usage:"
			echo
			echo "./dbn-install.sh"
			echo or
			echo "./dbn-install.sh [no]fn [no]type [no]bak"
			echo
			echo "no: prefix to set the following options to no. Otherwise, they'll be \"yes\"."
			echo "fn: FN Layer"
			echo "type: key.type"
			echo "bak: create backup"
			echo
			exit 0
		esac
	done
fi

############
# Do stuff #
############

# Backup
echo
if [ $backup -eq 1 ]
then
	echo "${text[9]}"
	cp /usr/share/X11/xkb/symbols/de de.bak
	
fi

# Collecting files, deleting old ones
echo "${text[10]}"
echo "1/3..."
rm before &> /dev/null
wget https://raw.githubusercontent.com/theNizo/DvorakByNizo-German/master/Linux/before &> /dev/null
echo "2/3..."
rm after &> /dev/null
wget https://raw.githubusercontent.com/theNizo/DvorakByNizo-German/master/Linux/after &> /dev/null

echo "3/3..."
# Download either FN or non-FN
if [ $fn -eq 1 ]
then
	wget https://raw.githubusercontent.com/theNizo/DvorakByNizo-German/master/Linux/dbn-FN &> /dev/null
	mv dbn-FN dbn-standalone
else
	wget https://raw.githubusercontent.com/theNizo/DvorakByNizo-German/master/Linux/dbn &> /dev/null
	mv dbn dbn-standalone
fi

# Correcting key.type
if [ $keytype -eq 1 ]
then
	sed -i 's/\/\/key.type/key.type/' dbn-standalone
fi

# Building file
echo "${text[11]}"
touch de
# First should override, if it already exists, the other ones should append
cat before > de
cat dbn-standalone >> de
cat after >> de

# Install file
sudo cp de /usr/share/X11/xkb/symbols
echo
echo "==========="
echo "${text[12]}"
echo "==========="
echo
exit 0
