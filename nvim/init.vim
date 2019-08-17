" Authors: Plato Kiorpelidis <otalpster@gmail.com>
" Description: A minimal, but feature rich, neovim config.

" ----------
" Visual options:
" ----------

" Show current line's number.
set number
" Show numbers relative to current line's number.
set relativenumber
" Show a vertical line at 71 column.
set colorcolumn=71
" Enable highligh search.
set hlsearch
" Show status line always.
set laststatus=2
" Don't show the line number, the column number, the virtual column number,
" and the relative position of the cursor in the file
set noruler
"set cmdheight=2
" Don't show the current mode.
set noshowmode
" Enable list characters.
set list
set listchars+=trail:•

" ----------
" Usability options
" ----------

" Allow switching between buffers w/o saving.
set hidden
" Render tabs with 4 width.
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
" Hard wrap at 91 characters. Each line holds 90 characters.
set textwidth=90
set formatoptions+=t
set formatoptions-=l
"set confirm
filetype indent on
set autoindent
" Enable undofile.
set undofile
set undodir=$HOME/.config/nvim/undo
" Update screen faster (for git gutter).
set updatetime=250
" Ignore *.o files when searching for a file (using :e or Ctrl-P).
set wildignore+=*.o

" ----------
" Mapping options
" ----------

" Map leader key to space.
let mapleader=" "

" Cancel a search (remove highlighted results) with Escape.
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<LF>

" Switch to previous buffer.
nnoremap <Leader><Leader> :e#<LF>

" Make arrow keys useless.
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>

" ----------
" Plug
" ----------

" Specify a directory for plugins.
call plug#begin('~/.config/nvim/plugged')

" Load fuzzy finder Ctrl-P.
Plug 'ctrlpvim/ctrlp.vim'

" Load syntastic (syntax checker).
Plug 'vim-syntastic/syntastic'

" Load git gutter.
Plug 'airblade/vim-gitgutter'

" Load git integration.
Plug 'tpope/vim-fugitive'

" Load airline.
Plug 'vim-airline/vim-airline'

" Load nerdcommenter.
Plug 'scrooloose/nerdcommenter'

" Load colorscheme onedark (atom).
Plug 'joshdick/onedark.vim'

call plug#end()

syntax on

set termguicolors

" ----------
" Plug-in config
" ----------

" One dark colorscheme:
let g:onedark_hide_endofbuffer=1
let g:onedark_terminal_italics=1
let g:onedark_termcolors=256
colorscheme onedark
let g:airline_theme='onedark'