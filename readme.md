# my dotfiles.
[ここ](https://github.com/mathiasbynens/dotfiles)を参考。

## Installation
環境のdotfilesに上書きするので注意。

#### git環境がない場合
```
cd; curl -#L https://github.com/gamiyama3110/dotfiles/tarball/master | tar -xzv --strip-components 1 --exclude={README.md,bootstrap.sh}
```

#### git環境がある場合
```
git clone https://github.com/gamiyama3110/dotfiles.git && cd dotfiles && source bootstrap.sh
```

更新する場合はdotfilesのディレクトリに移動して`bootstrap.sh`を実行。

```
set -- -f; source bootstrap.sh
```

### homebrew
インストール手順は公式を参照。
https://brew.sh/index_ja

```
sh brew.sh
```