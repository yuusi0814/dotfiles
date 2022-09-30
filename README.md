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

## GoogleChromeのインストール
```
scoop install googlechrome
```

## GlaryUtilitiesのインストール
```
scoop install glary-utilities
```

## Gitのインストール
```
scoop install git
```

## SourceTreeのインストール
```
scoop install sourcetree
```

## Slackのインストール
```
scoop install slack
```

## Zoomのインストール
```
scoop install zoom
```

## NEOVIMのインストール
```
scoop install neovim
scoop install neovim-qt
scoop install ctags
```

## jqのインストール
```
scoop install jq
```

## zipのインストール
```
scoop install zip
```

## AndroidStudioのインストール
```
scoop install adb
scoop install android-studio
scoop install android-sdk
scoop install android-clt
```
* Registoryにjreのpathを通す必要がある
```
Windows Registry Editor Version 5.00

[HKEY_LOCAL_MACHINE\SOFTWARE\JavaSoft]

[HKEY_LOCAL_MACHINE\SOFTWARE\JavaSoft\Java Development Kit]
"CurrentVersion"="1.8"

[HKEY_LOCAL_MACHINE\SOFTWARE\JavaSoft\Java Development Kit\1.8]
"JavaHome"="C:\Users\yuu_harada\scoop\apps\openjdk8-redhat-jre\current"
```

## scrypyのインストール
```
scoop install scrypy
```

## VsCodeのインストール
```
scoop install vscode
```

### configのシンボリックリンクを作成
```
New-Item -Value ~\dotfiles\settings.json -Path C:\Users\yuu_harada\scoop\apps\vscode\current\data\user-date\User -Name settings.json -ItemType SymbolicLink
New-Item -Value ~\dotfiles\keybindings.json -Path C:\Users\yuu_harada\scoop\apps\vscode\current\data\user-date\User -Name keybindings.json -ItemType SymbolicLink
```

## AWSCLIのインストール
```
scoop install aws
```

## AWSSAMのインストール
```
scoop install aws-sam-cli
```

## Amplifyのインストール
```
scoop install aws-amplify
```

## goのインストール
```
scoop install go
```

### pathを通す
```
GOPATH -> ~/go/bin
```

## protocのインストール
```
scoop install protobuf
```

## javaのインストール
```
scoop bucket add java
scoop install openjdk
```

## Nodejsのインストール
```
scoop install nodejs
```

## Yarnのインストール
```
scoop install yarn
```

## Pythonのインストール
```
scoop install python
```

## Rustのインストール
```
scoop install rust
```

## Rubyのインストール
```
scoop install ruby
scoop install mysy2
```

## coretempのインストール
```
scoop install coretemp
```

## deeplのインストール
```
scoop install deepl
```

## Audacityのインストール
```
scoop install audacity
```

## Linphoneのインストール
```
scoop install linphone
```

## thunderbirdのインストール
```
scoop install thunderbird
```

## Postgreqlのインストール
```
scoop install postgresql
```

## sqliteのインストール
```
scoop install sqlite
```

## Postmanのインストール
```
scoop install postman
```

## WinMergeのインストール
```
scoop install winmerge
```

## ngrokのインストール
```
scoop install ngrok
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

#### vim-plug

* Pluginの保存先
```
~/.vim/plugged
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

### awscliのインストール
```
sudo apt install awscli
```

* SAMもインストールしておく

#### configのシンボリックリンクを貼る
```
ln -s mnt/c/Users/yuu_harada/.aws ~/.aws
```

