#!/bin/bash

cp /usr/share/X11/xkb/symbols/de de.bak # create backup
rm de-nizo # delete potential old file, error can be expected
wget https://raw.githubusercontent.com/theNizo/DvorakByNizo-German/master/Linux/de-nizo # download the current file
cp de-nizo /usr/share/X11/xkb/symbols/de # replace file
echo "All done, please log out and back in again"
