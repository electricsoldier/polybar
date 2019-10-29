#!/bin/bash

PDIR="$HOME/.config/polybar"
LAUNCH="polybar-msg cmd restart"
 
. ~/.cache/wal/colors.sh

if  [[ $1 = "-wal" ]]; then
# Replacing colors
sed -i -e 's/shade1 = .*/shade1 = ${xrdb:color1:#222}/g' $PDIR/colors.ini
sed -i -e 's/shade2 = .*/shade2 = ${xrdb:color2:#222}/g' $PDIR/colors.ini
sed -i -e 's/shade3 = .*/shade3 = ${xrdb:color3:#222}/g' $PDIR/colors.ini
sed -i -e 's/shade4 = .*/shade4 = ${xrdb:color2:#222}/g' $PDIR/colors.ini
sed -i -e 's/shade5 = .*/shade5 = ${xrdb:color1:#222}/g' $PDIR/colors.ini
sed -i -e 's/shade6 = .*/shade6 = ${xrdb:color2:#222}/g' $PDIR/colors.ini
sed -i -e 's/shade7 = .*/shade7 = ${xrdb:color3:#222}/g' $PDIR/colors.ini
sed -i -e 's/shade8 = .*/shade8 = ${xrdb:color2:#222}/g' $PDIR/colors.ini
sed -i -e 's/accent = .*/accent = ${xrdb:color5:#222}/g' $PDIR/colors.ini
sed -i -e 's/bground = .*/bground = ${xrdb:color0:#222}/g' $PDIR/colors.ini
sed -i -e 's/modulefg-alt = .*/modulefg-alt = ${xrdb:color5:#222}/g' $PDIR/colors.ini
# Restarting polybar
$LAUNCH &

else
echo "Available options:
-amber		-blue			-blue-grey		-brown
-cyan		-deep-orange		-deep-purple		-green
-grey		-indigo			-light-blue		-light-green
-lime		-orange			-pink			-purple
-red		-teal			-yellow			-wal"
fi

