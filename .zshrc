# [ -n "$PS1" ] && source ~/.zprofile

source ~/.prompt/git-prompt.sh

fpath=(~/.prompt $fpath)
zstyle ':completion:*:*:git:*' script ~/.prompt/git-completion.bash
autoload -Uz compinit && compinit

GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM=1
GIT_PS1_SHOWUNTRACKEDFILES=
GIT_PS1_SHOWSTASHSTATE=1

setopt PROMPT_SUBST

# %~: ディレクトリ
# %c: カレントディレクトリ
PS1='%F{green}%n%f in %c %F{yellow}$(__git_ps1 "[%s]")%f\$ '
