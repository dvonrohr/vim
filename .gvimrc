set guifont=Hack:h11:cANSI:qDRAFT
set guioptions=aAce
set noballooneval
set linespace=4

if has("gui_running")
    set guioptions=icpM
    if has('win32') || has('win64')
        if (v:version == 704 && has("patch393")) || v:version > 704
            set renderoptions=type:directx,level:0.75,gamma:1.25,contrast:0.25,
                        \geom:1,renmode:5,taamode:1
        endif
    endif
endif

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
