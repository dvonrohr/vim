" nocompatible has to be the first of all (use real vimpower)
set nocompatible

set t_CO=256
filetype plugin indent on

colorscheme wombat

imap jj <ESC>
let mapleader=","

set backspace=indent,eol,start
set ignorecase
set incsearch
set hlsearch
set visualbell
nnoremap / /\v

if has('persistent_undo')
	set undofile
	set undolevels=5000
endif

" backup rules
" set <backup>	" enable backup files (.txt~)
" set <undofile>" enable persistent undo

" silent execute '!mkdir -p $HOME/.vim/tmp/backup'
" set backupdir=$HOME/.vim/tmp/backup " where to store backup
" silent execute '!mkdir -p $HOME/.vim/tmp/swap'
" set directory=$HOME/.vim/tmp/swap "where to store swap
" silent execute '!mkdir -p $HOME/.vim/tmp/views'
" set viewdir=$HOME/.vim/tmp/views " where to store view
" silent execute '!mkdir -p $HOME/.vim/tmp/undo'
" set undodir=$HOME/.vim/tmp/undo " where to store undo</undofile></backup>

syntax on

filetype on
filetype plugin on
filetype indent on

set smarttab            " make tab insert indedents instead of tabs at beginning fo a line
set expandtab           " set expandtab

" show linenumbers
set number

" show linenumbers relative
set relativenumber

" ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_them = 'powerlineish'
let g:airline_enable_branc = 1
let g:airline_powerline_fonts=1

set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_mode_map = {'passive_filetypes': ['xml']}
let g:syntastic_javascript_checkers = ['jshint']

set laststatus=2
set ttimeoutlen=50

" Nerdtree file explorer
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 3
let g:netrw_altv = 1
let g:netrw_winsize = 25
set autochdir
set browsedir=current
" augroup ProjectDrawer
"         autocmd!
"         autocmd VimEnter * :Vexplore
" augroup END

" Gitgutter
let g:gitgutter_async = 1

" Use Tab for expanding emmet snippets
let g:user_emmet_expandabbr_key='<TAB>'
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

