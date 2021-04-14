# my dotfiles.
[ここ](https://github.com/mathiasbynens/dotfiles)を参考。

## Installation
環境のdotfilesに上書きするので注意。

### 
#### git環境がある場合
> bash
```
git clone https://github.com/gamiyama3110/dotfiles.git && cd dotfiles && source bootstrap_bash.sh
```

> zsh
```
git clone https://github.com/gamiyama3110/dotfiles.git && cd dotfiles && source bootstrap_zsh.sh
```

更新する場合はdotfilesのディレクトリに移動して`bootstrap_bash.sh`|`bootstrap_zsh.sh`を実行。

```
set -- -f; source bootstrap_zsh.sh
```

#### git環境がない場合
workディレクトリに落としてスクリプトを実行。
```
cd; mkdir work; cd work; curl -#L https://github.com/gamiyama3110/dotfiles/tarball/master | tar -xzv --strip-components 1
```

> bash
```
source bootstrap_bash.sh
```

> zah
```
source bootstrap_zsh.sh
```

### homebrewでアプリケーションのインストール
インストールしたアプリケーションを一括でインストールする。
homebrewが必要なので公式の手順通りにインストールを行う。
https://brew.sh/index_ja

インストール後、スクリプトを実行。
```
sh brew.sh
```
