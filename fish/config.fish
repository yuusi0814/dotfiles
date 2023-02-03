if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Windowsにインストールしたコマンドのシンボリックリンク
# Windowsにインストールしたコマンドを使う場合ここにシンボリックを貼っておく
fish_add_path ~/windows_path

# go
fish_add_path /usr/local/go/bin

# binary
fish_add_path /home/yuu_harada/.local/bin

# asdf
source ~/.asdf/asdf.fish
