" .vimrc
" Andrew Benson
" my vim config file (currently configured for cygwin)
"
" How to Use
" - Setup .minttyrc to use solarized colors
" - Install a patched version of Consolas
" - Clone my dotfiles repo, or at least create ~/.vimtmp
" - Create ~/.vim/undo
" - git clone https://github.com/gmarik/Vundle.vim ~/.vim/bundle/Vundle.vim
" - vim +PluginInstall +qall

set nocompatible                          " break away from the vi past

" Vundle setup
filetype off                              " required by Vundle, temporarily
set rtp+=~/.vim/bundle/Vundle.vim         " add Vundle to 'runtime path'
call vundle#begin()

Plugin 'gmarik/Vundle.vim'                " Vundle manages itself...

Plugin 'altercation/vim-colors-solarized' " solarized color scheme
Plugin 'tomasr/molokai'                   " molokai color scheme

Plugin 'bling/vim-airline'                " prettier statusline
Plugin 'tpope/vim-fugitive'               " git commands within vim
Plugin 'airblade/vim-gitgutter'           " git diff support in the gutter
Plugin 'scrooloose/nerdtree'              " file explorer
Plugin 'jistr/vim-nerdtree-tabs'          " make nerdtree independent of tabs
Plugin 'jez/vim-c0'                       " c0 syntax support

call vundle#end()

" vim-colors-solarized settings
set background=dark                       " use the dark colorscheme
colorscheme solarized                     " use solarized colorscheme
call togglebg#map("<F6>")                 " toggle background color with F6

" vim-airline settings
set laststatus=2                          " always show statusline (required to
                                          "   see it without splitting)
set noshowmode                            " don't show mode in vim statusline
let g:airline_powerline_fonts=1           " use fancy symbols from patched font
let g:airline#extensions#tabline#enabled=1 " show tab bar at top
let g:airline_detect_paste=1              " show paste mode

" vim-gitgutter settings
hi clear SignColumn                       " don't highlight the side gutter

" vim-nerdtree-tabs settings
nmap <silent> <leader>t :NERDTreeTabsToggle<CR> " toggle nerdtree with \t

filetype plugin indent on                 " turn on file-based plugins/indenting

" general settings
set encoding=utf-8                        " use utf-8 encoding
set title                                 " show filename in window title
set autochdir                             " auto cd to current file's directory
set clipboard=unnamedplus                 " share clipboard with system
set mouse=a                               " click/scroll support
set equalalways                           " split windows always have same size
set eadirection=hor                       " ^but only for horizontal splits
set showcmd                               " show key cmds in the vim status line
set cursorline                            " highlight the current line
set scrolloff=10                          " always keep >=10 lines around cursor
set nostartofline                         " ctrl-{fbdu} should preserve position
set lazyredraw                            " don't redraw during macros for perf
set ttimeoutlen=50                        " 50 ms key code delay (kills lag
                                          "   switching insert to command mode)
set backspace=indent,eol,start            " allow backspacing over autoindents,
                                          "   line breaks, and start of insert
syntax on                                 " turn on syntax highlighting

" lines/columns-related settings
set number                                " show line numbers on the side
set ruler                                 " show line,col in the vim status line
set colorcolumn=80                        " show a vertical bar at 80 chars
set textwidth=80                          " format lines to 80 chars
highlight TooLong ctermbg=red ctermfg=white " highlight the TooLong category
match TooLong /\%81v.\+/                  " lines over 80 chars are TooLong

" search-related settings
set ignorecase                            " ignore case while searching
set smartcase                             " ^unless search pattern has uppercase
set incsearch                             " search while typing search pattern
set hlsearch                              " highlight all matches
nnoremap <silent> <space> :noh<return><space>  " <space> removes highlights

" indentation-related settings
set tabstop=2                             " a tab is equivalent to 2 columns
set softtabstop=2                         " tab in insert mode makes 2 columns
set expandtab                             " tab in insert mode produces spaces
set shiftwidth=2                          " >> and << should shift by 2 columns
set autoindent                            " indent new lines like previous line

" backup-related settings
set backup                                " make backups (the .ext~ kind)
set backupdir=~/.vimtmp,.                 " put backups into ~/.vimtmp
set directory=~/.vimtmp,.                 " put swapfiles into ~/.vimtmp
set undofile                              " backup undo history on write
set undodir=~/.vim/undo                   " put undo backups into ~/.vim/undo

" cursor customization
let &t_ti.="\e[2 q"                       " enter vim -> solid block cursor
let &t_SI.="\e[5 q"                       " enter insert -> blink line cursor
let &t_EI.="\e[2 q"                       " exit insert -> solid block cursor
let &t_te.="\e[5 q"                       " exit vim -> blink line cursor
