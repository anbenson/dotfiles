set encoding=utf-8 "UTF-8 character encoding
set tabstop=2  "2 space tabs
set shiftwidth=2  "2 space shift
set softtabstop=2  "Tab spaces in no hard tab mode
set expandtab  " Expand tabs into spaces
set autoindent  "autoindent on new lines
set showmatch  "Highlight matching braces
set ruler  "Show bottom ruler
set equalalways  "Split windows equal size
set formatoptions=croq  "Enable comment line auto formatting
set wildignore+=*.o,*.obj,*.class,*.swp,*.pyc "Ignore junk files
set title  "Set window title to file
set nohlsearch  "Highlight on search
set ignorecase  "Search ignoring case
set smartcase  "Search using smartcase
set incsearch  "Start searching immediately
set scrolloff=5  "Never scroll off
set wildmode=longest,list  "Better unix-like tab completion
set cursorline  "Highlight current line
set clipboard=unnamed  "Copy and paste from system clipboard
set lazyredraw  "Don't redraw while running macros (faster)
set autochdir  "Change directory to currently open file
set nocompatible  "Kill vi-compatibility
set wrap  "Visually wrap lines
set linebreak  "Only wrap on 'good' characters for wrapping
set backspace=indent,eol,start  "Better backspacing
set linebreak  "Intelligently wrap long files
set ttyfast  "Speed up vim
set nostartofline "Vertical movement preserves horizontal position
set number "Line numbers along side

" Strip whitespace from end of lines when writing file
autocmd BufWritePre * :%s/\s\+$//e

" Syntax highlighting and stuff
filetype plugin indent on
syntax on

" Color specifications
hi Comment	    term=none	      ctermfg=cyan	  guifg=Cyan
hi Comment	    term=none	      ctermfg=cyan	  guifg=Cyan
hi Constant	    term=underline	ctermfg=red	    guifg=Red
hi Identifier	  term=underline	ctermfg=green  	guifg=White
hi Statement	  term=bold	      ctermfg=white	  guifg=White
hi PreProc    	term=underline	ctermfg=magenta	guifg=Magenta
hi Type	      	term=underline	ctermfg=white	  guifg=White
hi Special	    term=bold      	ctermfg=blue  	guifg=Blue
hi Nontext	    term=bold     	ctermfg=gray	    guifg=Gray
hi Normal	      guifg=Yellow	  guibg=#00007F
hi Normal	      ctermfg=white

hi Comment      cterm=none	gui=none
hi Constant     cterm=bold	gui=none
hi Identifier   cterm=none	gui=none
hi Statement    cterm=bold	gui=none
hi PreProc      cterm=bold	gui=none
hi Type         cterm=bold	gui=none
hi Special      cterm=bold	gui=none
hi NonText	    cterm=bold	gui=none

" Get rid of warning on save/exit typo
command WQ wq
command Wq wq
command W w
command Q q