set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

" Separate virtual environments for Neovim, and only Neovim
" https://github.com/zchee/deoplete-jedi/wiki/Setting-up-Python-for-Neovim
let g:python3_host_prog = '/usr/local/var/pyenv/versions/neovim3/bin/python'
let g:python_host_prog = '/usr/local/var/pyenv/versions/neovim2/bin/python'

" Use dark theme
set background=dark 
" Use  truecolors
set termguicolors

" Quickfix: Vim Tmux Nagivator not working with neovim, as written on README
nnoremap <silent> <BS> :TmuxNavigateLeft<cr>