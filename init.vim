"QUALITY OF LIFE
"automatically keeps indentation, or indents when escalating scope
set smartindent
"show line number of cursor line, and distance for all other lines
set number
set relativenumber
"dont go back to start of line when changing buffers
set nostartofline
"case insensitive search, unless uppercase letters are used in the search
set ignorecase
set smartcase
"makes pasting work with vim - not sure if I need this
set pastetoggle=<F11>
"makes buffers able to be open even when not on screen
set hidden
"highlights line that the cursor is on
set cursorline
"don't need to update screen until macro is finished
set lazyredraw
"keep the cursor 5 lines away from the top or bottom
set so=5
"tabs appear as 4 spaces
set tabstop=4
set shiftwidth=4
"changes Y to copy till the end of line, instead of the whole line
nnoremap Y y$
"U is reverse undo
nnoremap U <C-R>
"no more EX mode! yay!
nnoremap Q @q
"changes j and k to use natural scrolling
nnoremap j gj
nnoremap k gk
"use dark scheme
"allows for persistent undos, even after file is closed
set undofile
"allow for mouse use
set mouse=a
"tabbing through finding files
set wildmode=longest,full
set path=**
"break on word
set linebreak
"remove mode showing in bottom left, because lightline already does that
set noshowmode

"REMAPPINGS
"tab switch shortcut, and remapping of J to accomodate. its inconvenient in
"insert mode, but you just have to deal with it, because vim doesnt generally
"allow motion in insert mode
nnoremap <silent> J  :bnext <ENTER>
nnoremap <silent> K  :bprevious <ENTER>
"give find command a convenient shortcut

"LEADER KEYS
let mapleader = " "
"close tab
nnoremap <leader>d :bd <ENTER>
"save and exit
nnoremap <leader>x :wq <ENTER>
"quit
nnoremap <leader>q :q <ENTER>
"make
nnoremap <leader>m :w <ENTER> :make <ENTER>
"make test
nnoremap <leader>t :w <ENTER> :make <ENTER> :make t <ENTER>
"save
nnoremap <leader>w :w <ENTER>
"reload config
nnoremap <leader>r :w <ENTER> :source ~/.config/nvim/init.vim <ENTER>
"open command prompt
nnoremap <leader>; :
"remap join line used by switching tabs
nnoremap <leader>j  J
nnoremap <leader>k  kJ
"search for files
nnoremap <leader>f :find 
"format whole file and return to position
nnoremap <leader>= gg=G``zz
"finding and replacing current word
nnoremap <leader>s yiw:%s/<C-r>"//gc<LEFT><LEFT><LEFT>
nnoremap <leader>b yiw:.,s/<C-r>"//gc<LEFT><LEFT><LEFT>
"finding and replacing selected text
xnoremap <leader>s "ay:%s/<C-r>a//gc<LEFT><LEFT><LEFT>
xnoremap <leader>b "ay:.,s/<C-r>a//gc<LEFT><LEFT><LEFT>
"copy and pasting to primary thing
xnoremap <leader>s "*y
nnoremap <leader>y "*y
"clear hlsearch
nnoremap <silent> <leader>h :noh<ENTER>
"run as python script
nnoremap <leader>p :w <ENTER> :!python3 % <ENTER>
nnoremap <leader>L :w <ENTER> :!pdflatex % <ENTER>
nnoremap <leader>l :w <ENTER> :!pdflatex % <ENTER><ENTER>

"PLUGINS
call plug#begin('~/.local/share/nvim/plugged')
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'ervandew/supertab'
Plug 'bling/vim-bufferline'
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-haskell-indent'
call plug#end()
let g:deoplete#enable_at_startup = 1
let g:bufferline_echo = 0
let g:bufferline_show_bufnr = 0
"buferline shows current buffers
let g:lightline = {
			\ 'colorscheme': 'solarized',
			\ 'active': {
			\   'left' : [['mode'],['bufferline']],
			\   'right': [ ['charvaluehex'], [ 'lineinfo' ],
			\              [ 'percent' ], [ 'filetype' ]]
			\ },
			\ 'component': {
			\   'charvaluehex': '0x%B',
			\   'bufferline': '%{bufferline#refresh_status()}%{g:bufferline_status_info.before . g:bufferline_status_info.current . g:bufferline_status_info.after}'
			\ }
			\ }

"COLORS
"use solarized dark scheme
colorscheme solarized
set background=dark

"LOCAL ONLY
set clipboard=unnamedplus
"save without sudoing into file
nnoremap <leader>W :silent w !sudo tee % <ENTER>
