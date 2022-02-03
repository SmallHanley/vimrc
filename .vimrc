if filereadable("/etc/vim/vimrc")
	source /etc/vim/vimrc
endif

au BufNewFile * :% w

" Integrate clang-format to vim
function! Formatonsave()
	let l:formatdiff = 1
	py3f /usr/share/vim/addons/syntax/clang-format.py
endfunction
au BufWritePre *.h,*.hpp,*.c,*.cc,*.cpp call Formatonsave()

" Delete reduntant blank & newline
au BufWritePre * :%s/\s\+$//e
au BufWritePre * :%s/\n*\%$//e

try
    color user
catch
    color default
endtry

set vb t_vb=
set clipboard=unnamed
set nocompatible

set cursorline
set nonu
hi CursorLineNr cterm=bold ctermfg=Red ctermbg=None

set noswapfile
set splitright
set linebreak
set showcmd
set scrolloff=4
set incsearch
set ignorecase
set hlsearch
hi Search cterm=underline ctermfg=none ctermbg=Red

set ai
filetype indent on
syntax on

" User mapping
""inoremap ( ()<Esc>i
""inoremap " ""<Esc>i
""inoremap ' ''<Esc>i
""inoremap [ []<Esc>i
inoremap {<CR> {<CR>}<Esc>ko
noremap p "+p
noremap P "+P
noremap yy "+yy
noremap y "+y
noremap d "+d
noremap dd "+dd
inoremap <C-c> <Esc>
au FileType c,cpp inoremap f<CR> for (int i = 0; i < ; i++) {<CR>}<Esc>kA<Esc>F;i
au FileType c,cpp inoremap w<CR> while () {<CR>}<Esc>kA<Esc>hhi
au FileType c,cpp inoremap i<CR> if () {<CR>}<Esc>kA<Esc>hhi
au FileType c,cpp inoremap <F1> () {<CR>}<Esc>kA<Esc>hhi

if expand('%:t') == "Makefile"
	set noexpandtab
else
	set expandtab
   	set shiftwidth=4
    set tabstop=4
endif

" Practice key
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

call plug#begin()
Plug 'preservim/nerdtree'
call plug#end()
