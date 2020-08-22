" tabs to spaces
"
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab


" install vim-plug to get plugin support

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" start vim-plug config

call plug#begin()

Plug 'stevearc/vim-arduino'

call plug#end()

" Statusline
set laststatus=2

" Arduino Status Line
" my_file.ino [arduino:avr:uno] [arduino:usbtinyisp] (/dev/ttyACM0:9600)
"function! MyStatusLine()
"  let port = arduino#GetPort()
"  let line = '%f [' . g:arduino_board . '] [' . g:arduino_programmer . ']'
"  if !empty(port)
"    let line = line . ' (' . port . ':' . g:arduino_serial_baud . ')'
"  endif
"  return line
"endfunction
"setl statusline=%!MyStatusLine()
