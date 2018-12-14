set number
set tabstop=2
set shiftwidth=2
set mouse=a
set autoindent
set cindent
syntax on
filetype indent plugin on

colo desert

let _curfile = expand("%:t")
if _curfile =~ "Makefile" || _curfile =~ "makefile" || _curfile =~ ".*\.mk"
    set noexpandtab
else
    set expandtab
endif

map <C-X> :py3f /usr/share/vim/addons/syntax/clang-format.py<cr>
imap <C-X> <c-o>:py3f /usr/share/vim/addons/syntax/clang-format.py<cr>

function FormatFile()
  let l:lines="all"
  py3f /usr/share/vim/addons/syntax/clang-format.py
endfunction

autocmd BufWritePre *.h,*.hpp,*.c,*.cpp,*.cc call FormatFile()

source ~/.cscope_maps.vim
