" Now using the middle finger of either hand you can type
" underscores with apple-k or apple-d, and add Shift
" to type dashes
imap <silent> <M-k> _
imap <silent> <M-d> _
imap <silent> <M-K> -
imap <silent> <M-D> -

"Use as ESCAPE
imap jj <Esc>
imap jk <Esc>
imap kk <Esc>

" ==== Search
nnoremap <CR> :noh<CR><CR>

"Vim move cursor one character in insert mode without arrow keys
inoremap <leader>c <ESC>la
