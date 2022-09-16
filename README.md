# dotfiles

* Windows PowerShellでのシンボリックリンクの作成
```
New-Item -Value ~\.vimrc -Path ~ -Name .vimrc -ItemType SymbolicLink```
```

## ファイル一覧
* .vimrc - Vimの設定
* .init.vim - NeoVimの設定
* .ideavimrc - IdeaVimの設定
* settings.zip - AndroidStudioの設定
* alacrity.xml - Alacrittyの設定

# Windowsでの環境構築

## WSLのインストール

### インストール

#### PowerShellで以下を実行

1. MicrosoftStoreからLinuxDistributionをインストール
起動して初期設定を行う

2. WSL2を規定のバージョンとして設定
```
wsl --set-default-version 2
```

### 初期化
Windowsの設定 → アプリと機能 → Ubuntu → 詳細オプション → リセット

### アンインストール
Windowsの設定 → アプリと機能 → Ubuntu → アンインストール

## Scoopのインストール

* scoop経由でインストールしたアプリは以下に配置される
```
C:\Users\\scoop\apps
```

* buckets(レポジトリ)という概念があり、アプリの種別によってbucketsを追加する必要がある
```
scoop bucket add [bucketName]
scoop bucket list
```

* 基本コマンド
```
scoop search [appName]
scoop install [appName] [appName] [appName]
scoop info [appName]
scoop list
scoop status
scoop update [appName] or *
scoop uninstall [appName]
```

### Powershellで以下を実行

1. 作業ユーザーに一時的に実行ポリシーを与える
```
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

2. ScoopのインストールスクリプトをDLし、実行
```
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
```

3. aria2をインストール
アプリダウンロードを高速化(マルチコネクション)で可能にする
```
scoop install aria2
```

## Alacrittyのインストール

1. extras bucketを追加
```
scoop bucket add extras
```

2. Alacrittyをインストール
```
scoop install alacritty
```

3. VisualC++をインストール(依存関係)
```
scoop install extras/vcredist2017
```

### Alacrittyの設定

* 事前にdotfilesレポジトリをホームディレクトリにcloneしておく

* configは`%APPDATA%\alacritty\alacritty.xml`

1. dotfilesからシンボリックリンクを作成
```
mkdir $Env:APPDATA\alacritty
New-Item -Value ~\dotfiles\alacritty.yml -Path $Env:APPDATA\alacritty -Name alacritty.yml -ItemType SymbolicLink
```

# Linuxでの環境構築

## dotfilesのclone
cd ~
git clone https://github.com/yuusi0814/dotfiles.git

## Alacrittyで以降wsl上で行う

### fishのインストール

* configは`.config/fish/config.fish`

1. インストール
```
sudo apt install fish
```

2. デフォルトシェルを変更
```
chsh
/usr/bin/fish
```

3. dotfileからシンボリックリンクを作成
```
mv .config/fish/config.fish dotfiles
```

### neovimのインストール

* configは`~/.vimrc`, `.config/nvim/init.vim`

1. インストール
```
sudo apt install neovim
```

2. dotfilesからシンボリックリンクを作成
```
ln -s ~/dotfiles/.vimrc ~/.vimrc
mkdir .config/nvim
ln -s ~/dotfiles/init.vim .config/nvim/init.vim
```

3. vim-plugのインストール
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
:PlugInstall
```

### tmuxのインストール

* configは`~/.tmux.conf`

1. インストール
```
sudo apt install tmux
```

2. dotfilesからシンボリックリンクを作成
```
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
```

