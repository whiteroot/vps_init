set nocompatible
set backspace=indent,eol,start

set backup " keep a backup file
set backupdir=~/tmp/vim/backup,~/tmp,.,/tmp
set directory=~/tmp/vim/swap,~/tmp,.,/tmp

set history=128 " keep X lines of command line history
set ruler " show the cursor position all the time
set showcmd " display incomplete commands
set incsearch " do incremental searching
set hlsearch
syntax on
color koehler
hi statusLine ctermbg=black
set number

if has("autocmd")
filetype plugin indent on
augroup vimrcEx
au!
autocmd FileType text setlocal textwidth=78
autocmd BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "normal g`\"" |
\ endif
augroup END
endif " has("autocmd")

set lz
set sw=2 " tab width
set autowrite "write files before make
set showmatch "show matching brackets () {} []
set vb t_vb=
set ignorecase "most often usefull while searching
set sessionoptions=curdir,folds,options,winsize,resize,winpos
set scrolloff=10
set laststatus=2 "show last cmd and statusbar
"set ai "auto indent
set si "smart indent
set cindent "C-like indenting
set autochdir
set cm=blowfish2
set foldenable
set foldmethod=indent
"set foldnestmax=2
nnoremap <space> za
"vnoremap <space> zf
highlight Folded guibg=darkgreen guifg=white
"highlight FoldColumn guibg=darkgrey guifg=white
set foldlevel=99

autocmd BufReadPost *.tpl set syntax=htmljinja
au BufRead,BufNewFile *.hx setfiletype haxe

" read PDF file !
autocmd BufReadPre *.pdf set ro
autocmd BufReadPost *.pdf %!pdftotext -nopgbrk "%" - 

" path to ctags
let Tlist_Ctags_Cmd="/usr/bin/ctags"
