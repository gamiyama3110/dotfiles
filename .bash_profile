echo "meow" | cowsay

# load the dotfiles
for file in ~/.{path,bash_prompt,aliases,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done
unset file

# 
shopt -s nocaseglob
shopt -s cdspell

# git
mkdir -p ~/git 2>/dev/null

# TODO バージョン管理をasdfに集約したい。
# source $(brew --prefix asdf)/asdf.sh
