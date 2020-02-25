filetype off

"set runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

"File explorer
Plugin 'preservim/nerdtree'

"Comment functions so powerful
Plugin 'preservim/nerdcommenter'

"File finder
Plugin 'ctrlpvim/ctrlp.vim'

"Git wrapper
Plugin 'tpope/vim-fugitive'

call vundle#end()
filetype plugin indent on

function! InstallVundlePlugins()
  :PluginInstall
  :q!
  :q!
endfunction

