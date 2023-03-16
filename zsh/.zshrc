alias vi='nvim'
alias vim='nvim'
alias view='nvim -R'

# Windowsにインストールしたコマンドのシンボリックリンク
# Windowsにインストールしたコマンドを使う場合ここにシンボリックを貼っておく
export PATH=~/windows_path:$PATH

# go
export PATH=/usr/local/go/bin:$PATH

# binary
export PATH=/home/yuu_harada/.local/bin:$PATH

# asdf
source ~/.asdf/asdf.fish

# zshのプロンプトにpwdを表示
PS1="%{$fg[cyan]%}[${USER}@${HOST%%.*} %1~]%(!.#.$)${reset_color} "
