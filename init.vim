" general settings
set encoding=utf-8
set termguicolors
set number
" set relativenumber
" for relative line numbers. also maybe add toggle shortcut
set clipboard=unnamedplus
set splitbelow
set splitright
set colorcolumn=76
highlight ColorColumn ctermbg=8

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set cursorline
set fileformat=unix

" remaps
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" commands
command W w

" vim-plug section
call plug#begin('~/.local/share/nvim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'davidhalter/jedi-vim'
Plug 'zchee/deoplete-jedi'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'chriskempson/base16-vim'
Plug 'tmhedberg/SimpylFold'
Plug 'tpope/vim-fugitive'
Plug 'morhetz/gruvbox'
Plug 'vim-syntastic/syntastic'
Plug 'rust-lang/rust.vim'
" Plug 'junegunn/vim-easy-align'
" " may prove useful
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
" " snippets like shebang or code skeletons. check out later
call plug#end()

" jedi

" airline
let g:airline_powerline_fonts = 1
let g:jedi#use_splits_not_buffers = "bottom"
let g:airline#extensions#tabline#enabled = 1

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" appearance
colorscheme base16-embers
" colorscheme gruvbox
" set background=dark
let g:airline_theme='base16_embers'
" let g:airline_theme='gruvbox'

" python stuff
" au BufNewFile,BufRead *.py
"     \ set tabstop=4
"     \ set softtabstop=4
"     \ set shiftwidth=4
"     \ set textwidth=79
"     \ set expandtab
"     \ set autoindent
"     \ set fileformat=unix
" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
let python_highlight_all=1
