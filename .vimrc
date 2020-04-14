" Vundle Plugin setting {{{
"==================================================
set shell=/bin/bash
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Vundles
Plugin 'tpope/vim-commentary'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'rhysd/vim-clang-format'
Plugin 'crusoexia/vim-monokai'
Plugin 'ycm-core/YouCompleteMe'

call vundle#end()

" }}}
" vim setting {{{
"===================================================
" set folder maker
set foldmarker={{{,}}}
set foldmethod=marker
set foldlevel=0 " fold all marker
let php_folding=1
set foldnestmax=3

" auto indent
set ai

" color
syntax enable
set background=dark
set t_Co=256
let g:airline_theme='monokai'
colorscheme monokai

" emphasize the line of the cursor
set cursorline

" set the editor encoding
set enc=utf8

" show the line number
set number

" show relative line number
" set relativenumber

" search without caps
set ic

" set tab width
set tabstop=2
set shiftwidth=2
set expandtab

" show search result
set incsearch

" highlight the search result
set hlsearch

" auto go to next line when the line is too long
set wrap

" retain 3 lines when scroll pages
set scrolloff=3

" set powerline font for airline
let g:airline_powerline_fonts = 0

" show the tabbar for airline
let g:airline#extensions#tabline#enabled = 1

" set vim-airline theme
let g:airline_theme = 'lucius'

" auto indent with different file type
filetype indent on

" show statusbar
set laststatus=2

" setting for vim tab when editing makefile
autocmd FileType make setlocal noexpandtab

"  }}}
" map setting {{{
" ==============================================
imap <esc><BS> <C-w>

map <silent> <c-s> :noh<cr>
imap <silent> <c-s> <esc>:noh<cr>

map <leader>p :set paste! paste? <cr>
map <leader>s :vsp .<cr>
map <leader>q :q <cr>
map <leader>w :w <cr>
map <leader>Q :q! <cr>
map <leader>W :wq <cr>

map <leader>cf :ClangFormat<cr>

map <leader><space> za " fold the current codes

nmap <BS> X
nmap <DEL> x

" remove search highlight
map <leader>h :set hlsearch!<cr>

" Open file in tab
map <leader>O :tabe           " open file in new tab
map <leader>o :tabe %:h <cr>  " open file with explorer in new tab

map <leader>b :bn <cr>        " switch to previous buffer
map <leader>B :bp <cr>        " switch to next buffer

map <leader>t :tabs <cr>
map <leader>= :tabn<cr>       " switch to next tab
map <silent> <c-c> :tabn<cr>
imap <silent> <c-c> <esc>:tabn<cr>
map <leader>- :tabp<cr>       " switch to previous tab
map <silent> <c-x> :tabp<cr>
imap <silent> <c-x> <esc>:tabp<cr>
map <leader>+ :tabmove +1<cr> " move tab after next tab
map <leader>_ :tabmove -1<cr> " move tab before previous tab

map <leader>0 0gt
map <leader>1 1gt
map <leader>2 2gt
map <leader>3 3gt
map <leader>4 4gt
map <leader>5 5gt
map <leader>6 6gt
map <leader>7 7gt
map <leader>8 8gt
map <leader>9 9gt
imap <leader>0 <esc>0gt
imap <leader>1 <esc>1gt
imap <leader>2 <esc>2gt
imap <leader>3 <esc>3gt
imap <leader>4 <esc>4gt
imap <leader>5 <esc>5gt
imap <leader>6 <esc>6gt
imap <leader>7 <esc>7gt
imap <leader>8 <esc>8gt
imap <leader>9 <esc>9gt

" comment the current line
nmap <leader>/ gcc 
imap <leader>/ <esc>gcci

" map for coding
imap <leader>{ {}<left>
imap <leader>( ()<left>
imap <leader>[ []<left>
imap <leader>< <><left>
imap [<cr> []<left><cr><cr><up><tab>
imap {<cr> {}<left><cr><cr><up><tab>
imap (<cr> ()<left><cr><cr><up><tab>
imap <leader><tab> <c-n>
imap <leader>v <esc>v
imap <leader>V <esc>V

" }}}
" the setting for vim-commentary {{{
"========================================================
autocmd FileType python,shell setlocal commentstring=#\ %s
autocmd FileType cpp setlocal commentstring=//\ %s

" }}}

