" nocompatible has to be the first of all (use real vimpower)
set nocompatible

set t_CO=256
filetype plugin indent on

set encoding=utf-8 " the encoding displayed
set fileencoding=utf-8 " the encoding written to file

colorscheme base16-railscasts

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

" Easier split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

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
set nobackup

syntax on

filetype on
filetype plugin on
filetype indent on

set autoindent
set smarttab            " make tab insert indedents instead of tabs at beginning fo a line
set expandtab           " set expandtab

" hightlight whitespace chars
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59
set showbreak=↪\
set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨
set list
"
" show linenumbers
set number

" show linenumbers relative
set relativenumber

" ctrlp
set runtimepath^=~/.vim/pack/dvonrohr/start/ctrlp

" Make CtrlP faster by making it skip files inside .gitignore
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" vim-airline
let g:airline_powerline_fonts = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = {'passive_filetypes': ['xml']}
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_loc_list_height=3

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
let g:user_emmet_mode='a'
let g:user_emmet_expandabbr_key='<TAB>'
let g:user_emmet_complete_tag = 1
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
let g:user_emmet_settings = {
      \ "html": {
      \     "snippets": {
      \         "fdeb": "<f:debug>{|}</f:debug>",
      \         "ftrans": "<f:translate key=\"|\" />"
      \    }
      \  },
      \ "js": {
      \    "snippets": {
      \        "con": "console.log(|)"
      \    }
      \}

