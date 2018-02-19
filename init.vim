" vim-plug section
call plug#begin('~/.local/share/nvim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'davidhalter/jedi-vim'
"Plug 'zchee/deoplete-jedi'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'chriskempson/base16-vim'
" Plug 'tmhedberg/SimpylFold' " python code folding
Plug 'tpope/vim-fugitive'
Plug 'morhetz/gruvbox'
Plug 'vim-syntastic/syntastic'
Plug 'rust-lang/rust.vim'
" Plug 'junegunn/vim-easy-align'
" " may prove useful
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
" " snippets like shebang or code skeletons. check out later
call plug#end()


" general settings
set encoding=utf-8
set termguicolors
set number
set exrc
set secure
set clipboard=unnamedplus
set splitbelow
set splitright
set linebreak
set colorcolumn=80
highlight ColorColumn ctermbg=8

set foldenable
"filetype plugin indent on
"let anyfold_activate=3
"set foldlevel=1
" let g:syntastic_c_config_file = '~/.config_c'
" let g:syntastic_c_no_include_search = 1
set tabstop=4
set softtabstop=4
set shiftwidth=4
set showcmd
set wildmenu
set expandtab
set autoindent
set cursorline
set fileformat=unix
let g:mapleader=";"


" remaps
nnoremap j gj
nnoremap k gk
nnoremap , ;
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
noremap <A-s> :SyntasticToggleMode<CR>
noremap <A-h> :set hlsearch!<CR>
noremap <A-t> :NERDTreeToggle<CR>
nnoremap <leader>g :set relativenumber!<CR>
nnoremap <leader>rr :set keymap=russian-jcukenwin<CR>
" redo with iminsert and imsearch
nnoremap <leader>re :set keymap=""<CR>
" noremap <F4> :w | :make!<CR>
nnoremap <leader>te :colo base16-embers<CR> | let g:airline_theme='base16_embers'
"nnoremap <leader>tae :AirlineTheme base16_embers<CR>
nnoremap <leader>tg :colo base16-grayscale-dark<CR>
nnoremap <leader>tag :AirlineTheme base16_grayscale<CR>
" add light scheme later

"set keymap=russian-jcukenwin
"set iminsert=0
"set imsearch=0

" commands
command W w
command Q q

" airline
let g:airline_powerline_fonts = 0
"let g:jedi#use_splits_not_buffers = "bottom"
let g:airline#extensions#tabline#enabled = 1

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"let g:syntastic_c_config_file = '.config_c'
"let g:syntastic_c_no_include_search = 1

" deoplete
let g:deoplete#enable_at_startup = 1

" appearance
colorscheme base16-embers
let g:airline_theme='base16_embers'
" colorscheme gruvbox
" set background=dark
" let g:airline_theme='gruvbox'

" strips trailing whitespace at the end of files. this
" is called on buffer write in the autogroup above.
function! <SID>StripTrailingWhitespaces()
    " save last search & cursor position
    let _s=@/
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    let @/=_s
    call cursor(l, c)
endfunction

let python_highlight_all=1
