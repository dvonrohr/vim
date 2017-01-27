set guifont=Inconsolata_for_Powerline:h14:cANSI:qDRAFT
set guioptions=aAce
set noballooneval

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
