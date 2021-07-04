#!/bin/bash

# 1. Read all files in ~/.config/kitty/themes/ directory and remember them
# 2. Delete the previous file (if there is one) theme.conf in ~/.config/
# 3. Create a symlink to the new theme.conf file

# First part
themesFolder="$HOME/.config/kitty/themes/"

declare -A themes

iterator=1
for i in $(ls $themesFolder)
do
        if [[ $i == *".conf" ]]
        then
                themes[$iterator]+="$i"
                echo "[$iterator] $i"
                iterator=$((iterator+1))
        fi
done

while true
do
        read -p 'Enter the number of theme you want to choose: ' themeId
        if [[ -v themes[$themeId] ]]
        then 
                        break
        else
                echo ""
                echo "Incorrect number! Be more attantive please!"
                echo ""
        fi
done

echo "You have chosen a theme: ${themes[$themeId]}"

# If such file exists - delete it
themeConf=$HOME/.config/kitty/theme.conf 

if [ -f "$themeConf" ]
then
        rm $themeConf
fi

# Create symlink to this file
fullPathToTheNewTheme="$themesFolder${themes[$themeId]}"
ln -s $fullPathToTheNewTheme ${themeConf}
