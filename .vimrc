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
set guifont=ProggyCleanTTSZ\ 14
if has ("gui_running")
	set background=light
	colorscheme desert
	"colors koehler
else
	set background=dark
endif

set number ai sm js
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
set backspace=indent,eol,start "allow backspacing over everything in insert mode

"set undolevels=1000 "remembering a 1000 undos
set noerrorbells
set visualbell

set wildmenu
set wildmode=list:longest,full

set showmode
set laststatus=2
set statusline=[%L],[%t],(%l,%c)
set cmdheight=1

set viminfo='500,f1,:100,/100 "massively detailed viminfo file

"set cursorline
"highlight cursorline guibg=#333333
set showmatch
set ruler
set title
set ttyfast

set foldmethod=marker  "the three '{'s are the fold demarcations
set foldenable

"set whichwrap=<,>,h,l,[,]
"set expandtab
"set autochdir
"set hlsearch
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
imap <F4> <ESC>:q<RETURN>
imap \\ <ESC>
imap <F8> <ESC>:!./a.out<RETURN>

" mapping for compiling and executing files
"imap <F7> <ESC>:!g++ %<RETURN>
nmap 8 <ESC>:make %<CR>
nmap <F9> <ESC>:!./a.out<RETURN>
nmap <silent> <C-T> :tabnew <RETURN>
map <F2> <ESC>:w<RETURN>
map <F3> <ESC>:shell<RETURN>
map <F4> <ESC>:q<RETURN>
map ,q <ESC>:q<RETURN>
map ,wq <ESC>:wq<RETURN>
map ,w <ESC>:w<RETURN>
map <TAB> gt
map <S-TAB> gT

vmap <C-c> :s/^/\/\/<CR>
vmap <C-u> :s/\/\//<CR>
"map <C-k> :set nohlsearch<RETURN> 
"map / :set hlsearch<RETURN>/

"set dictionary+=/usr/share/dict/words
"setlocal spell spelllang=en_us


"highlight Comment cterm=italic ctermfg=DarkGrey

" including header files for c++ coding
abbreviate hpps #include <iostream><CR>#include <cstdlib><CR>#include <cmath><CR>
					 \#include <cstring><CR>#include <string><CR>#include <cstdio><CR>
					 \#include <vector><CR>#include <map><CR>#include <stack><CR>
					 \using namespace std; <CR><CR>int main()<CR>{<CR><CR>return 0;<CR>}

"temporary latex abbreviations; should install vim-latex plugin soon.
abbreviate itemize \begin{itemize}<CR>\end{itemize}
abbreviate enumerate \begin{enumerate}<CR>\end{enumerate}
abbreviate frame \begin{frame}<CR>\end{frame}

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
au BufEnter,Bufnew *.c map <F7> :!gcc -g % <CR>
au BufEnter,Bufnew *.cpp map <F7> :!g++ -g % <CR>
au BufEnter,Bufnew *.py map <F7> :!python % <CR>
au BufEnter,Bufnew *.tex map <F7> :!pdflatex % <CR>
au BufEnter,Bufnew *.tex setlocal spell spelllang=en_us

autocmd Bufnew,Bufnew *.c set cindent
autocmd Bufnew,Bufnew *.cpp set cindent
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
