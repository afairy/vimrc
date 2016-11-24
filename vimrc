set nocompatible
filetype plugin indent on
syntax on
set background=light
colorscheme solarized
let mapleader = ","
"map <leader>c :wa<cr>:sil! make<cr>cw<cr>
" inoremap {<CR> {<CR>}<C-o>O
inoremap <C-j> <Esc>
nnoremap s za
nnoremap S [z
nnoremap <C-s> ]z
" <C-6> switches back to the alternate file and the correct column in the line.
nnoremap <C-6> <C-6>`"
" <C-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>
" Format with newlines and space from normal mode
nnoremap <leader><space> i<space><esc>
nnoremap <leader><cr> o<esc>
nnoremap <leader>, :wa<cr>:silent make<cr>:redraw!<cr>
map L $
map H 0

set linespace=2
set encoding=utf-8
set autoindent              " Do dumb autoindentation when no filetype is set
set tabstop=8               " Real tab characters are 8 spaces wide,
set shiftwidth=2            " but an indent level is 2 spaces wide.
set softtabstop=4           " <BS> over an autoindent deletes both spaces.
set expandtab               " Use spaces, not tabs, for autoindent/tab key.
set mouse=a                 " Allow mouse use in normal and visual mode.
set nostartofline           " Avoid moving cursor to BOL when jumping around
set whichwrap=b,s,h,l,<,>   " <BS> <Space> h l <Left> <Right> can change lines
set virtualedit=block       " Let cursor move past the last char in <C-v> mode
set scrolloff=0             " Keep 0 context lines above and below the cursor
set backspace=2             " Allow backspacing over autoindent, EOL, and BOL
set showmatch               " Briefly jump to a paren once it's balanced
set matchtime=2             " (for only .2 seconds).
set ignorecase              " Default to using case insensitive searches,
set smartcase               " unless uppercase letters are used in the regex.
set hlsearch                " Highlight searches by default.
set incsearch               " Incrementally search while typing a /regex
set vb t_vb=                " Disable all bells.  I hate ringing/flashing.
set confirm                 " Y-N-C prompt if closing with unsaved changes.
set showcmd                 " Show incomplete normal mode commands as I type.
set report=0                " : commands always print changed line count.
set shortmess=aOstT
set ruler                   " Show some info, even without statuslines.
set laststatus=2            " Always show statusline, even if only 1 window.
set noequalalways           " Don't keep resizing all windows to the same size
set hidden                  " Hide modified buffers when they are abandoned
set swb=useopen,usetab      " Allow changing tabs/windows for quickfix/:sb/etc
set splitright              " New windows open to the right of the current one
set nonumber                " Display line numbers not
set numberwidth=1           " using only 1 column (and 1 space) while possible
set history=1000            " Keep a very long command-line history.
set wildmenu                " Menu completion in command mode on <Tab>
set wildmode=full           " <Tab> cycles between all matching choices.
set wcm=<C-Z>               " Ctrl-Z in a mapping acts like <Tab> on cmdline
set suffixes+=.info,.aux,.log,.dvi,.bbl,.out,.lo
set wildignore=*.o,*.obj,*.bak,*.exe,*~,*.dll,*.pyc

if &enc =~ '^u\(tf\|cs\)'   " When running in a Unicode environment,
  set list                  " visually represent certain invisible characters:
  let s:arr = nr2char(9655) " using U+25B7 (▷) for an arrow, and
  let s:dot = nr2char(8901) " using U+22C5 (⋅) for a very light dot,
  " display tabs as an arrow followed by some dots (▷⋅⋅⋅⋅⋅⋅⋅),
  exe "set listchars=tab:"    . s:arr . s:dot
  " and display trailing and non-breaking spaces as U+22C5 (⋅).
  exe "set listchars+=trail:" . s:dot
  exe "set listchars+=nbsp:"  . s:dot
  " Also show an arrow+space (↪ ) at the beginning of any wrapped long lines?
  let &sbr=nr2char(8618).' '
endif

if ! len(glob("~/.backup/"))
  echomsg "Backup directory ~/.backup doesn't exist!"
endif

set writebackup             " Make a backup of the original file when writing
set backup                  " and don't delete it after a succesful write.
set backupskip=             " There are no files that shouldn't be backed up.
set updatetime=2000         " Write swap files after 2 seconds of inactivity.
set backupext=~             " Backup for "file" is "file~"
set backupdir^=~/.backup    " Backups are written to ~/.backup/ if possible.
set directory^=~/.backup//  " Swap files are also written to ~/.backup, too.
" ^ Here be magic! Quoth the help:
" For Unix and Win32, if a directory ends in two path separators "//" or "\\",
" the swap file name will be built from the complete path to the file with all
" path separators substituted to percent '%' signs.  This will ensure file
" name uniqueness in the preserve directory.


" Squeeze blank lines with :Squeeze
command! -nargs=0 Squeeze g/^\s*$/,/\S/-j


let g:netrw_preview   = 1
let g:netrw_liststyle = 3
let g:netrw_winsize   = 30
