# load the dotfiles
for file in ~/.{path,aliases,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done
unset file

echo "meow...$(echo $SHELL)" | cowsay
