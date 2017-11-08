set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Separate virtual environments for Neovim, and only Neovim
" https://github.com/zchee/deoplete-jedi/wiki/Setting-up-Python-for-Neovim
let g:python3_host_prog = '/full/path/to/neovim3/bin/python'