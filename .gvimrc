set guifont=Hack:h11:cANSI:qDRAFT
set guioptions=aAce
set noballooneval
set linespace=4

" resize current buffer by +/-
" 5
nnoremap <M-Right> :vertical resize +5<CR>
nnoremap <M-Left>  :vertical resize +5<CR>
nnoremap <M-Up>    :resize -5<CR>
nnoremap <M-Down>  :resize +5<CR>

" Command+Option+Right
" for
" next
map <D-M-Right> :tabn<CR>
" Command+Option+Left
" for
" previous
map <D-M-Left> :tabp<CR>

"Automatically
"resize
"splits
" when resizing MacVim window
autocmd VimResized * wincmd =

if has("gui_macvim")
  set transparency=10
  set guifont=Monaco\ for\ Powerline:h13
endif
