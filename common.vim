"Set <Leader> key
let mapleader = ","

"No compatible with V1"
set nocompatible

"Line number
set number

"Ruler
set ruler

"Tab size
set tabstop=2

"Tab size on autoindent
set shiftwidth=2

"Converts tab in spaces
set expandtab

"Tab delete on backspace
set smarttab

"Auto identation
set ai

"Highlight line under cursor
set cursorline

"Reload files that where updated after opening them in Vim
set autoread

"Syntax
syntax on

"No Wrap
set nowrap

"Always Show statusline
set laststatus=2

" Remove all trailing space before save the buffer
autocmd BufWritePre * :%s/\s\+$//e

"Search
set hlsearch
set incsearch
set ignorecase
set smartcase
nnoremap <esc><esc> :silent! nohls<cr>

"Disabling arrow keys
nnoremap <LEFT> <nop>
nnoremap <DOWN> <nop>
nnoremap <UP> <nop>
nnoremap <RIGHT> <nop>

"Enabling 256 colors
set t_Co=256

"Color scheme
colorscheme darcula

"No backup files
set nobackup
set nowritebackup
set noswapfile

"Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

"Disable GUI scrollbars
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

"Get rid of ugly split borders.
hi vertsplit guifg=bg guibg=bg

nnoremap <silent> <Leader>n :NERDTreeToggle<CR>
nnoremap <silent> <Leader>f :NERDTreeFind<CR>

