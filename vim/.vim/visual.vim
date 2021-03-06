" visual.vim
"
" Maintained by Claud D. Park <poqsuit0.bj@gmail.com>
" http://www.poqsuit0.com/


" Enable syntax highlighting
syntax on

" Line numbers on
set number
" Set relative number for line
set relativenumber
" Show ruler
set ruler
" Always show tab pannel
set showtabline=2
" Show the command typing
set showcmd
" Show matching brackets
set showmatch
" Bracket blinking
set matchtime=5
" Show the current mode
set showmode
" Highlight current line 
set cursorline
" Show cursorline for active window only
augroup highlight_active_window
  autocmd!
  autocmd BufEnter * setlocal cursorline
  autocmd BufLeave * setlocal nocursorline
augroup END
" No blinking
set novisualbell
" No noise
set noerrorbells
" Minimal number of screen lines to keep above and below the cursor
set scrolloff=3
" Native customized statusline, if airline is not available
set statusline=%1*%{winnr()}\ %*%<\ %f\ %h%m%r%=%l,%c%V\ (%P)
" Always show status line.
set laststatus=2

""" Match and search {{{
  " Highlight searches
  set hlsearch
  " Ignore case of searches
  set ignorecase
  " be sensitive when there's a capital letter
  set smartcase
  " Highlight dynamically as pattern is typed
  set incsearch 
""" }}}

""" Theme {{{
  " Enable 256 colors in vim
  set t_Co=256
  " Disable Background Color Erase (BCE) so that color schemes
  " work properly when Vim is used inside tmux and GNU screen
  if &term =~ '256color'
    set t_ut=
  endif
  " Set to 'dark' to use colors that look good on dark background
  " Set to 'light' to use colors that look good on a light background
  set background=dark
  " Set colorscheme
  " colorscheme summerfruit256
  " colorscheme gruvbox
  " colorscheme seoul256-light
  colorscheme molokai
""" }}}
