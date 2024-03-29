call plug#begin('~/.local/share/nvim/plugged')

Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-surround'
Plug 'altercation/vim-colors-solarized'
Plug 'google/vim-searchindex'
Plug 'tpope/vim-commentary'
Plug 'ervandew/supertab'
Plug 'mxw/vim-jsx'
Plug 'tpope/vim-cucumber'
Plug 'scrooloose/nerdtree'
Plug 'posva/vim-vue'
Plug 'stephpy/vim-yaml'
Plug 'chr4/nginx.vim'

call plug#end()

" show line numbers
set number
" don't wrap lines
set nowrap
" enable mouse
set mouse=a
" auto indent
set autoindent
" list options in command mode
set wildmode=list:longest
" always display statusline
set laststatus=2
" highlight search
set hlsearch
" highlight search incrementally whily typing
set incsearch
" show relative numbers
set relativenumber

" statusline
set statusline=%f       "path to the file
set statusline+=%=      "left/right separator
set statusline+=\ %y    "filetype
set statusline+=\ %c,   "cursor column
set statusline+=%l/%L   "cursor line/total lines

" mappings
nnoremap Y y$
nmap <Tab> gt
nmap <S-Tab> gT
cmap <C-e> <C-r>=expand('%:p:h')<CR>/
nmap <leader>] :noh<Enter>

" disable cursor/arrows
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

let g:jsx_ext_required = 0
let g:solarized_termcolors=256
syntax enable
set background=dark
colorscheme solarized

" Open NERDTree for directory (vim .)
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

