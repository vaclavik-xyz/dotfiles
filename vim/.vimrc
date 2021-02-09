"""""""""""""""""""""""""""""""
" Plugins
"""""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')

    " vim status line
     Plug 'itchyny/lightline.vim'

    " HTML plugin
     Plug 'mattn/emmet-vim'

     " indent line
     Plug 'yggdroot/indentline'
     
    " GIT plugin (used in lightline)
     Plug 'tpope/vim-fugitive'

    " typing gc will comment out a block or line of code in any language
    Plug 'chrisbra/vim-commentary'

    " If you prefer Ctrl+h/j/k/l for navigating across vim/tmux splits,
    " this plugin will integrate Vim and Tmux, so that you can seamlessly
    " jump across the border of a vim/tmux split
    Plug 'christoomey/vim-tmux-navigator'

    "Simple tmux statusline generator with support for powerline symbols and vim/lightline statusline integration
    Plug 'edkolev/tmuxline.vim'

    " plugin to color colornames and codes
    Plug 'ap/vim-css-color'

call plug#end()

"""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""

" Sets how many lines of history VIM has to remember
set history=500
" Enable filetype plugins
filetype plugin on
filetype indent on
" Set to auto read when a file is changed from the outside
set autoread
au FocusGained,BufEnter * checktime
" :W sudo saves the file 
" (useful for handling the permission-denied error)
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!
" copy without linenumbers
se mouse+=a

"""""""""""""""""""""""""""""""
" VIM UI
"""""""""""""""""""""""""""""""

"  Set 7 lines to the cursor - when moving vertically using j/k
set so=7
" Avoid garbled characters in Chinese language windows OS
let $LANG='en'
set langmenu=en
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
" Turn on the Wild menu
set wildmenu
"Always show current position
set ruler
" Height of the command bar
set cmdheight=1
" A buffer becomes hidden when it is abandoned
set hid
" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
" Ignore case when searching
set ignorecase
" When searching try to be smart about cases 
set smartcase
" Highlight search results
set hlsearch
" Makes search act like search in modern browsers
set incsearch 
" Don't redraw while executing macros (good performance config)
set lazyredraw 
" For regular expressions turn magic on
set magic
" Show matching brackets when text indicator is over them
set showmatch 
" How many tenths of a second to blink when matching brackets
set mat=2
" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500
" Add a bit extra margin to the left
" set foldcolumn=1
" Set relative column numbers
set number relativenumber
" Draws horizontal highlight on the line
set cursorline

"""""""""""""""""""""""""""""""
" Colors and fonts
"""""""""""""""""""""""""""""""
" colorscheme
let g:solarized_termtrans = 1
syntax enable
set background=dark
colorscheme solarized
" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8
" Use Unix as the standard file type
set ffs=unix,dos,mac

"""""""""""""""""""""""""""""""
" Files, backups and undo
"""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git etc. anyway...
set nobackup
set nowb
set noswapfile

"""""""""""""""""""""""""""""""
" Text, tab and indent related
"""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab
" Be smart when using tabs ;)
set smarttab
" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

"""""""""""""""""""""""""""""""
" Status line
"""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2
" INSERT on bottom not needed with lightline
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ 'active': {
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'filetype' ] ],
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

"""""""""""""""""""""""""""""""
" Movement
"""""""""""""""""""""""""""""""
" move vertically by visual line
nnoremap j gj
nnoremap k gk

"""""""""""""""""""""""""""""""
" Custom functions
"""""""""""""""""""""""""""""""
" set bold linenumber
hi clear CursorLine
augroup CLClear
        autocmd! ColorScheme * hi clear CursorLine
augroup END

hi CursorLineNR cterm=bold
augroup CLNRSet
        autocmd! ColorScheme * hi CursorLineNR cterm=bold
augroup END

"""""""""""""""""""""""""""""""
" Plugin config
"""""""""""""""""""""""""""""""
" indentline character
let g:indentLine_char = '¦'

"" Emmet
" remap leader key
let g:user_emmet_leader_key=','

"" Tmuxline (run :Tmuxline to reload)
" to disable using powerline symbols
let g:tmuxline_powerline_separators = 0
"let g:tmuxline_preset = ''
"let g:tmuxline_theme = 'iceberg'

