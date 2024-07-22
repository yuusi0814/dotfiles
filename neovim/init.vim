" .vimrcを読み込む
source ~\.vimrc
" neovimにPythonを認識させる
" let g:python3_host_prog='C:\Users\***\scoop\apps\python\current\python.exe'
" セッションを自動保存する
autocmd VimLeave * mksession! ~/AppData/Local/nvim/session.vim
