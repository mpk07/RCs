set nocompatible
" sample vimrc file
" settings 
" fsync
syntax on
filetype on
filetype plugin on

syntax enable
"rcolorscheme marklar 
"colorscheme desert
"colorscheme peaksea
set guifont=Droid\ Sans\ Mono
if has ("gui_running")
	set background=light
	colorscheme habiLight
	"desertEx PapayaWhip breeze autumn nuvola habilight
else
	set background=dark
	colorscheme wombat
endif

set number js
"opens a quickfix error window with IDE navigation.
"copen 4
set linespace=2
set linebreak "warp line at the nearest word boundary
set mousehide
set mouse=a
set clipboard+=unnamed

set filetype=c
set omnifunc=ccomplete#Complete

set makeprg=gcc 

set smartindent
set autoindent
set cinwords="if,else,do,while,for,switch,begin,end"

set tabstop=3
set shiftwidth=3
"set expandtab "will replace tab-spaces with spaces alone.

set backspace=indent,eol,start "allow backspacing over everything in insert mode

"set undolevels=1000 "remembering a 1000 undos
set noerrorbells
set visualbell

set wildmenu
set wildmode=list:longest,full
set wildignore=*.o,*.lo "ignore matching files when using tab complete

set showmode
set laststatus=2 "never=0; only if multiple windows=1; always=2
set statusline=[%L],[%t],(%l,%c)%m
"another sample statusline
"set statusline=(%l,%c) %F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

set cmdheight=1

"search for .viminfo file in ~
set viminfo='500,f1,:100,/100 "massively detailed viminfo file

"set cursorline
"highlight cursorline guibg=#333333
set showmatch
set ruler
set title titlestring=%<%F%=%l/%L-%P titlelen=70

set ttyfast

set foldmethod=marker  "the three '{'s are the fold demarcations
"set foldenable

"set whichwrap=<,>,h,l,[,]
"set autochdir

set hlsearch 
"also :noh will stop highlighting
set ignorecase
set smartcase
"set incsearch "make search act like search in modern browsers

" Always gj, gk
nnoremap j gj
nnoremap k gk

"the following key bindings make diw and ciw useless. use a dw and cw instead.
"nnoremap dw diw
"nnoremap cw ciw

"cpy till end of line, to be compatible with D and C
nnoremap Y y$	

" mapping functions
" mapping for saving and closing files 
imap <F2> <ESC>:w<RETURN>i
imap <F3> <ESC>:shell<RETURN>
"the one thing that I took from Gedit?
imap <C-K> <ESC>:noh<RETURN> 
imap \\ <ESC>
imap <F8> <ESC>:!./a.out<RETURN>

" mapping for compiling and executing files
"imap <F7> <ESC>:!g++ %<RETURN>
"nmap 8 <ESC>:make %<CR>
nmap <F9> <ESC>:!./a.out<RETURN>
nmap <silent> <C-T> :tabnew <RETURN>
nmap <F2> <ESC>:w<RETURN>
nmap <F3> <ESC>:shell<RETURN>
nmap <C-K> <ESC>:noh<RETURN>
nmap ,q <ESC>:q<RETURN>
nmap ,wq <ESC>:wq<RETURN>
nmap ,w <ESC>:w<RETURN>
nmap <TAB> gt
nmap <S-TAB> gT
nmap \\ <ESC> 

vmap \\ <ESC>
vmap <C-c> :s/^/\/\/<CR>
vmap <C-u> :s/\/\//<CR>
"map <C-k> :set nohlsearch<RETURN> 
"map / :set hlsearch<RETURN>/

"set dictionary+=/usr/share/dict/words
"setlocal spell spelllang=en_us


"highlight Comment cterm=italic ctermfg=DarkGrey

" including header files for c++ coding
abbreviate cpps #include <iostream><CR>#include <cstdlib><CR>#include <cmath><CR>
					 \#include <cstring><CR>#include <string><CR>#include <cstdio><CR>
					 \#include <vector><CR>#include <map><CR>#include <stack><CR>
					 \using namespace std; <CR><CR>int main()<CR>{<CR><CR>return 0;<CR>}

"temporary latex abbreviations; should install vim-latex plugin soon.
"abbreviate itemize \begin{itemize}<CR>\end{itemize}
"abbreviate enumerate \begin{enumerate}<CR>\end{enumerate}
"abbreviate frame \begin{frame}<CR>\end{frame}

"shebangs - Ricky Martin
abbreviate pysh #!/usr/bin/python
abbreviate shebang #!/bin/bash

"visual searching for selected patterns
" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
						  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
						  \gvy/<C-R><C-R>=substitute(
						  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
						  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
						  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
						  \gvy?<C-R><C-R>=substitute(
						  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
						  \gV:call setreg('"', old_reg, old_regtype)<CR>


"The following autocmds set the compiler/interpreter depending on the
"file type, to check key in :map to see the current compiler/interpreter
"An alternative way to achieve the same thing would be without using autocmd.
"make a key binding always invoke :make %; after setting makeprg
au BufEnter,Bufnew *.c imap <F7> <ESC>:w<CR> :!gcc -g % <CR>
au BufEnter,Bufnew *.c map <F7> :w<CR> :!gcc -g % <CR>

au BufEnter,Bufnew *.cpp imap <F7> <ESC>:w<CR> :!g++ -g % <CR>
au BufEnter,Bufnew *.cpp map <F7> :w<CR> :!g++ -g % <CR>

au BufEnter,Bufnew *.py imap <F7> <ESC>:w<CR> :!python % <CR>
au BufEnter,Bufnew *.py map <F7> :w<CR> :!python % <CR>

au BufEnter,Bufnew *.tex imap <F7> <ESC>:w<CR> :!pdflatex %<CR>
au BufEnter,Bufnew *.tex map <F7> :w<CR> :!pdflatex % <CR>
"au BufEnter,Bufnew *.tex setlocal spell spelllang=en_us

autocmd Bufnew,Bufnew *.c set cindent
autocmd Bufnew,Bufnew *.cpp set cindent
autocmd Bufnew,Bufnew *.py set cindent

autocmd BufEnter,Bufnew *.py set omnifunc=pythoncomplete#Complete
autocmd BufEnter,Bufnew *.html set omnifunc=htmlcomplete#CompleteTags
autocmd BufEnter,Bufnew *.css set omnifunc=csscomplete#CompleteCSS
autocmd BufEnter,Bufnew *.xml set omnifunc=xmlcomplete#CompleteTags
autocmd BufEnter,Bufnew *.php set omnifunc=phpcomplete#CompletePHP
"autocmd FileType python set omnifunc=pythoncomplete#Complete
"autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
"autocmd FileType css set omnifunc=csscomplete#CompleteCSS
"autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
"autocmd FileType php set omnifunc=phpcomplete#CompletePHP
