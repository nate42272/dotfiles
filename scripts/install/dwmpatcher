dotfiles="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo -n "Enter path to your dwm config.h file: "
read config
check=$(basename $config)
check2="${config/#~/$HOME}"

if [[ "$check" ==  "config.h" ]]; then

	echo -ne "\nEnsure neither this file nor the patch (the new file, in this repo) or /dotfiles/dwm/config.def.h have been moved out of their original directory by you, or else things could break. Press Y to begin patching, and press any other key to cancel. "
	read confirmation

	if [[ "$confirmation" == Y || "$confirmation" == y ]]; then
    		diff3 -m "$check2" "$dotfiles/dwm/config.def.h" "$dotfiles/dwm/config.h"  > "$dotfiles/dwm/config.diff"



	else
		echo -e "\nok daddy"
	fi
else
	echo -e "\nDoes that look like a path to a config.h path to you? You fucking donkey"
fi
