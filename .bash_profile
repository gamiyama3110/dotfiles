# load the dotfiles
for file in ~/.{path,bash_prompt,aliases,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done
unset file

echo "meow...$(echo $SHELL)" | cowsay

# 
shopt -s nocaseglob
shopt -s cdspell

# TODO バージョン管理をasdfに集約したい。
# source $(brew --prefix asdf)/asdf.sh
