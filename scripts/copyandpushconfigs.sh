#!/bin/bash

cd /home/kumail/Code/ffxiv-configs
cp /home/kumail/.xlcore/ffxivConfig/MACROSYS.dat /home/kumail/Code/ffxiv-configs/universal-files/MACROSYS.dat

# this array contains all of the file names to be moved over from the character folder
character_files=( "ACQ" "ADDON" "COMMON" "CONTROL0" "CONTROL1" "GEARSET" "GS" "HOTBAR" "ITEMFDR" "ITEMODR" "KEYBIND" "LOGFLTR" "UISAVE" "MACRO" )

for file_name in ${character_files[@]}; do
	if [[ -f "/home/kumail/.xlcore/ffxivConfig/FFXIV_CHR004000174B53FDC3/$file_name.DAT" ]]; then
		cp "/home/kumail/.xlcore/ffxivConfig/FFXIV_CHR004000174B53FDC3/$file_name.DAT" "/home/kumail/Code/ffxiv-configs/character-files/$file_name.DAT"
	else
		echo "$file_name not found..."
	fi
done

git add .
git commit -m 'automated script commit'
git push
