#!/usr/bin/env bash
cd "$(dirname "${BASH_SOURCE}")"

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
        --exclude "bootstrap.sh" \
        -avh --no-perms . ~
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
