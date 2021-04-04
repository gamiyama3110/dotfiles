#!/usr/bin/env bash
cd $(dirname ${BASH_SOURCE})

git pull origin main;

usage() {
    echo "Usage: $0 [OPTIONS]"
    echo "Options: "
    echo "  -h, --help"
    echo "  -f, --force 実行確認をスキップして適用する。"
    echo "  -w, --work 仕事用の環境を取り込む。"
    exit 1
}
for OPT in "$@"
do 
    case $OPT in
        -h | --help)
            usage
            exit 1
            ;;
        -f | --force)
            FORCE_UPDATED=1
            shift
            ;;
        -w | --work)
            WORKING_MODE=1
            shift
            ;;
        *)
            usage
            exit 1
            ;;
    esac
done

doIt() {
    rsync --exclude ".git/" \
        --exclude ".DS_Store" \
        --exclude "README.md" \
        --exclude "bootstrap_bash.sh" \
        --exclude "bootstrap_zsh.sh" \
        --exclude "brew.sh" \
        --exclude "Brewfile.lock.json" \
        --exclude ".zprofile" \
        --exclude ".zsh_prompt" \
        --exclude ".zshrc" \
        -avh --no-perms . ~
    
    if [ ! -e ~/.prompt/git-prompt.sh ]; then
        mkdir -p ~/.prompt/
        cd ~/.prompt
        curl -o git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
        curl -o git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
        curl -o _git https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh
        cd -
    fi
    source ~/.bash_profile

    ./brew.sh
    
    echo "installation complete." | cowsay
}

if [ "$FORCE_UPDATED" ]; then
    doit
else
    read -p "Overwrite the setting. Is it OK ? (y/n) "
    echo ""
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        doIt
    fi
fi
unset doIt
unset doBrewInstall
# END
