#!/bin/bash

# Create the working directory, if it doesn't exist, then cd into it
if [ ! -d ~/DvorakByNizo ]
then
	mkdir ~/.DvorakByNizo
fi
cd  ~/.DvorakByNizo

clear

#################################
# Choose the installer language #
#################################
cat << language
[1] Deutsch (not finished yet)
[2] English
[Q] Quit

language

# Get user input, then set an array with all the strings
while true; do
    read -p 'Selection [1/2/Q]:' lang
    case $lang in
		#1)
		#text=()
		#break
		#;;
		2)
		
text=("Invalid input" "Selection" "This script will install the Dvorak by Nizo (German) layout by overriding the standard german Dvorak layout.

[1] With FN Layer
[2] Without FN Layer
[Q] Quit" "Do you use a DE/WM that needs key.type?

GNOME - choose either
KDE - ?
Xfce - No
LXDE - ?
MATE - ?
Cinnamon - ?
i3 - Yes" "There's already a backup. Override it?" "No" "Yes" "Create/override backup (chosen automatically if there is none)" "Is this correct?")

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

# Ask for FN layer
echo "${text[2]}"

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

clear

backup=0
# Check for backup
if [ -f ~/.DvorakByNizo/de.bak ]
then
	while true; do
		read -p "${text[4]} [y/n]: " yn
		case $yn in
			[yY])
			backup=1
			break
			;;
			[nN])
			break
			;;
			*)
			echo ${text[0]} >&2
		esac
	done
fi

clear

#Ask for confirmation
echo "${text[4]}"
echo
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

