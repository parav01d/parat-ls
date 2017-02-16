#!/bin/bash

bold=$(tput bold)
normal=$(tput sgr0)

cat_header='    ___________________________\n  /\n |'
cat_footer=' |\n  \\____    _________________________________________\n       \\  /\n        \\/ \n'

cat_sounds=()
cat_sounds[0]='cat1.wav'
cat_sounds[1]='cat2.wav'

cats=()
cats[0]='     /\\__/\\\n    /`    `\\ \n  === 0  0 ===\n    \\  --  /\n   /        \\\n  /          \\\n |            |\n  \\  ||  ||  /\n   \\_oo__oo_/#######o'
cats[1]='   /\\     /\\\n  {  `---`  }\n  {  O   O  }\n~~|~   V   ~|~~\n   \  \|/  /\n    `-----`__\n    /     \  `^\_\n   {       }\ |\_\_   W\n   | \_\/  |/ /  \\_\\_( )\n    \\__/  /(_E     \\__/\n      (  /\n       MM'

echo "${bold}${cat_header}"
while IFS='' read -r line || [[ -n "$line" ]]; do
echo "${bold} |  ${normal}$line"
done < "$1"
echo "${bold}${cat_footer}"
echo "${bold}${cats[$RANDOM % 2]}"
echo "${normal}"
path="$(echo $0 | rev | cut -c 8- | rev | tr -d '\n')"
afplay ${path}/${cat_sounds[$RANDOM % 2]}

