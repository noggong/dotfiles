""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 이 아래는 최대한 https://github.com/mathiasbynens/dotfiles 유지
" => Vundle 설치
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.local/share/nvim/plugged')

Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'majutsushi/tagbar'
Plug 'vim-scripts/Gundo'
Plug 'tpope/vim-surround'
"Plug 'SirVer/ultisnips'  # , 느려짐, settings.autocomplete.vim도 수정

function! BuildYCM(info)
  if a:info.status == 'installed' || a:info.force
    !./install.sh
  endif
endfunction
Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }

Plug 'ervandew/supertab'
Plug 'Raimondi/delimitMate'
Plug 'christoomey/vim-tmux-navigator'
Plug 'Lokaltog/vim-easymotion'
Plug 'scrooloose/syntastic'
Plug 'vim-scripts/matchit.zip'
Plug 'kien/ctrlp.vim'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-markdown'
Plug 'rking/ag.vim'
Plug 'chase/vim-ansible-yaml'
Plug 'wakatime/vim-wakatime'
Plug 'mattn/emmet-vim'
Plug 'flazz/vim-colorschemes'
Plug 'mustache/vim-mustache-handlebars'
Plug 'rizzatti/dash.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'bling/vim-airline'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/nerdcommenter'
Plug 'mileszs/ack.vim'
Plug 'dyng/ctrlsf.vim'
Plug 'airblade/vim-gitgutter'

" Colorscheme
Plug 'morhetz/gruvbox'

" Git
Plug 'tpope/vim-git'
Plug 'tpope/vim-fugitive'
Plug 'gregsexton/gitv'
Plug 'mattn/gist-vim'

" Python
Plug 'davidhalter/jedi-vim'
Plug 'python-mode/python-mode'

" Javascript
Plug 'pangloss/vim-javascript'

" Tmux-airline
Plug 'edkolev/tmuxline.vim'

call plug#end()


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" To enable 256 colors in vim, put this your .vimrc before setting the colorscheme:
" https://github.com/morhetz/gruvbox/issues/85: Cannot find color scheme gruvbox
set t_Co=256
" Enable syntax highlighting
syntax on
colorscheme gruvbox

" Make Vim more useful
set nocompatible
" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed
" Enhance command-line completion
set wildmenu
" Allow cursor keys in insert mode set esckeys
" Allow backspace in insert mode
set backspace=indent,eol,start
" Optimize for fast terminal connections
set ttyfast
" Add the g flag to search/replace by default
set gdefault
" Use UTF-8 without BOM
set encoding=utf-8 nobomb
" Change mapleader(NerdComment등에 사용)
"let mapleader="."  # .을 사용하기 위해서 변경
" Don’t add empty newlines at the end of files
set binary
set noeol
" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
	set undodir=~/.vim/undo
endif

" Don’t create backups when editing files in certain directories
set backupskip=/tmp/*,/private/tmp/*

" Respect modeline in files
set modeline
set modelines=4
" Enable per-directory .vimrc files and disable unsafe commands in them
set exrc
set secure
" Enable line numbers
set number
" Highlight current line
set cursorline
" Make tabs as wide as two spaces
set tabstop=2
" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list
" Highlight searches
set hlsearch
" Ignore case of searches
set ignorecase
" Highlight dynamically as pattern is typed
set incsearch
" Always show status line
set laststatus=2
" Enable mouse in all modes
set mouse=a
" Disable error bells
set noerrorbells
" Don’t reset cursor to start of line when moving around.
set nostartofline
" Show the cursor position
set ruler
" Don’t show the intro message when starting Vim
set shortmess=atI
" Show the current mode
set showmode
" Show the filename in the window titlebar
set title
" Show the (partial) command as it’s being typed
set showcmd
" Use relative line numbers

"Use as ESCAPE
imap jj <Esc>

if exists("&relativenumber")
	set relativenumber
	au BufReadPost * set relativenumber
endif
" Start scrolling three lines before the horizontal window border
set scrolloff=3

" Strip trailing whitespace (,ss)
function! StripWhitespace()
	let save_cursor = getpos(".")
	let old_query = getreg('/')
	:%s/\s\+$//e
	call setpos('.', save_cursor)
	call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>
" Save a file as root (,W)
noremap <leader>W :w !sudo tee % > /dev/null<CR>

" Automatic commands
if has("autocmd")
	" Enable file type detection
	filetype on
	" Treat .json files as .js
	autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
	" Treat .md files as Markdown
	autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Settings 관리
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"so ~/.vim/settings.vim

"" 20171018 SyntasticToggleMode off as default
""https://stackoverflow.com/questions/20030603/vim-syntastic-how-to-disable-the-checker
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
nnoremap <C-w>E :SyntasticCheck<CR> :SyntasticToggleMode<CR>


"""""""""""""""""""""""""""""""""""""""""
 20171018 
 " => Python-mode related settings
 """""""""""""""""""""""""""""""""""""""""""

let g:pymode_options_max_line_length = 79
let g:pymode_indent = 1

" Enable automatic virtualenv detection
let g:pymode_virtualenv = 1

let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'

let g:pymode_lint_on_fly = 0
let g:pymode_lint_message = 1

let g:pymode_lint_checkers = ['pyflakes', 'pep8', 'mccabe']
let g:pymode_folding = 0

let g:pymode_rope_lookup_project = 0
let g:pymode_rope = 0
