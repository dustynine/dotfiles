set nocompatible              " be iMproved, required
set t_Co=256
execute pathogen#infect() 

set clipboard=unnamedplus
syntax on
" GuiColorScheme base16-embers

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

" let g:airline_right_alt_sep = ''
" let g:airline_right_sep = ''
" let g:airline_left_alt_sep= ''
" let g:airline_left_sep = ''
let g:airline_theme='base16_embers'
let g:airline_powerline_fonts = 1
let g:jedi#use_splits_not_buffers = "bottom"
autocmd FileType python setlocal completeopt-=preview

set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
" highlight lCursor guifg=NONE guibg=Cyan

if (&t_Co == 256 || &t_Co == 88) && !has('gui_running') &&
  \ filereadable(expand("$HOME/.vim/plugin/guicolorscheme.vim"))
  " Use the guicolorscheme plugin to makes 256-color or 88-color
  " terminal use GUI colors rather than cterm colors.
  runtime! plugin/guicolorscheme.vim
  GuiColorScheme base16-embers
else
  " For 8-color 16-color terminals or for gvim, just use the
  " regular :colorscheme command.
  colorscheme default
endif

set colorcolumn=78
highlight ColorColumn ctermbg=8 
