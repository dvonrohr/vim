" nocompatible has to be the first of all (use real vimpower)
set nocompatible

set t_CO=256
filetype plugin indent on

set encoding=utf-8 " the encoding displayed
set fileencoding=utf-8 " the encoding written to file

colorscheme base16-railscasts
set background=dark

imap jj <ESC>
let mapleader=","

set backspace=indent,eol,start
set incsearch
set ignorecase smartcase " case-insensivite searching by default
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
set backup	" enable backup files (.txt~)
set undofile" enable persistent undo

if has('win32')
  set nobackup
  set nowritebackup
  set noswapfile
" silent execute '!mkdir "'.$VIMRUNTIME.'/temp"'
" silent execute '!del "'.$VIMRUNTIME.'/temp/*~"'
" set backupdir=$VIMRUNTIME/temp//
" set directory=$VIMRUNTIME/temp//
else
   silent execute '!mkdir -p $HOME/.vim/tmp/backup'
   set backupdir=$HOME/.vim/tmp/backup " where to store backup
   silent execute '!mkdir -p $HOME/.vim/tmp/swap'
   set directory=$HOME/.vim/tmp/swap "where to store swap
   silent execute '!mkdir -p $HOME/.vim/tmp/views'
   set viewdir=$HOME/.vim/tmp/views " where to store view
   silent execute '!mkdir -p $HOME/.vim/tmp/undo'
   set undodir=$HOME/.vim/tmp/undo " where to store undo</undofile></backup>
endif

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

" Let ctrlp search through tags file (ctags)
nnoremap <leader>. :CtrlPTag<cr>

" Wildmenu
set wildmenu
set wildignorecase
set wildmode=list:full
set wildignore=*.swp,*.bak
set wildignore+=*.pyc,*.class,*.sln,*.Master,*.csproj,*.csproj.user,*.cache,*.dll,*.pdb,*.min.*
set wildignore+=*/.git/**/*,*/.hg/**/*,*/.svn/**/*
set wildignore+=tags
set wildignore+=*.tar.*

" List all loaded buffers and populate the prompt to choose one
nnoremap <leader>l :ls<CR>:b<space>

set path=.,**
nnoremap <leader>f :find *
nnoremap <leader>s :sfind *
nnoremap <leader>v :vert sfind *
nnoremap <leader>t :tabfind *

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

" display buffers in airline
let g:airline#extensions#tabline#enabled = 0

set laststatus=2
set ttimeoutlen=50

" Nerdtree file explorer
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 3
let g:netrw_altv = 1
let g:netrw_winsize = 25
set autochdir
nmap <leader>n :NERDTreeToggle<cr>

set browsedir=current
" augroup ProjectDrawer
"         autocmd!
"         autocmd VimEnter * :Vexplore
" augroup END

" Gitgutter
let g:gitgutter_async = 1

set tags=./tags,tags;$HOME

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
