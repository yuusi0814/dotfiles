
# Windowsでの環境構築

## Scoopのインストール
Powershellで以下を実行

1. 作業ユーザーに一時的に実行ポリシーを与える
```
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

2. Scoopのインストールスクリプトを実行
```
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
```

3. aria2をインストール
アプリダウンロードを高速化(マルチコネクション)で可能にする
```
scoop install aria2
```

## Scoopでインストール

### Bucket
```
scoop bucket add extras java versions
```

### Install
```
scoop install 7zip
scoop install cmder
scoop install alacritty
scoop install googlechrome
scoop install glary-utilities
scoop install git
scoop install sourcetree
scoop install slack
scoop install zoom
scoop install neovim
scoop install neovim-qt
scoop install ctags
scoop install jq
scoop install zip
scoop install adb
scoop install android-sdk
scoop install android-studio
scoop install gradle
scoop install openjdk
scoop install scrypy
scoop install vscode
scoop install aws
scoop install aws-sam-cli
scoop install aws-amplify
scoop install go
scoop install protobuf
scoop install nodejs
scoop install yarn
scoop install python
scoop install rust
scoop install ruby
scoop install msys2
scoop install coretemp
scoop install deepl
scoop install audacity
scoop install linphone
scoop install thunderbird
scoop install postgresql
scoop install sqlite
scoop install postman
scoop install winmerge
scoop install ngrok
```

## WSLのインストール

1. MicrosoftStoreからLinuxDistributionをインストール
起動して初期設定を行う

2. WSL2を規定のバージョンとして設定
```
wsl --set-default-version 2
```

<br>
<br>
<br>

# Linuxでの環境構築

## Install
```
sudo apt install fish
sudo apt install neovim
sudo apt install tmux
```

2. デフォルトシェルを変更
```
chsh
/usr/bin/fish
```

3. vim-plugのインストール
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
```
:PlugInstall
```

4. AWSCLIとSAMのインストール
```
公式サイトにて
```

<br>
<br>
<br>

# シンボリックリンク

tmux
```
ln -s ~/dotfiles/tmux/.tmux.conf ~/.tmux.conf
```

vim
```
New-Item -Value ./neovim/.vimrc -Path ~ -Name .vimrc -ItemType SymbolicLink
```
```
ln -s ~/dotfiles/neovim/.vimrc ~/.vimrc
```

neovim
```
New-Item -Value ./neovim/init.vim -Path $Env:LOCALAPPDATA/nvim -Name init.vim -ItemType SymbolicLink
```
```
mkdir .config/nvim
ln -s ~/dotfiles/neovim/init.vim ~/.config/nvim/init.vim
```

ideavim
```
New-Item -Value ./android_studio/.ideavimrc -Path ~ -Name .ideavimrc -ItemType SymbolicLink
```

alacritty
```
New-Item -Value ./alacritty/alacritty.yml -Path $Env:APPDATA/alacritty -Name alacritty.yml -ItemType SymbolicLink
```

fish
```
ln -s ~/dotfiles/fish/config.fish ~/.config/fish/config.fish
```

zsh
```
ln -s ~/dotfiles/zsh/.zshrc ~/.zshrc
```

vscode
```
New-Item -Value ./vscode/settings.json -Path ~/scoop/apps/vscode/current/data/user-data/User -Name settings.json -ItemType SymbolicLink
```
```
New-Item -Value ./vscode/keybindings.json -Path ~/scoop/apps/vscode/current/data/user-data/User -Name keybindings.json -ItemType SymbolicLink
```
