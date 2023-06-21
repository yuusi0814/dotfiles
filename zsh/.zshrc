alias vi='nvim'
alias vim='nvim'
alias view='nvim -R'

# Windowsにインストールしたコマンドのシンボリックリンク
# Windowsにインストールしたコマンドを使う場合ここにシンボリックを貼っておく
export PATH=$HOME/windows_path:$PATH

# go
export PATH=/usr/local/go/bin:$PATH

# binary
export PATH=$HOME/.local/bin:$PATH

# ruby
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - zsh)"

# zshのプロンプトにpwdを表示
PS1="%{$fg[cyan]%}[${USER}@${HOST%%.*} %1~]%(!.#.$)${reset_color} "

# nvm - auto generate
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# WindowsにインストールしたコマンドのPATH

# vscode
export PATH="/mnt/c/Users/yuu_harada/scoop/apps/vscode/current/bin:$PATH"

