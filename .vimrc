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

" Color Scheme
try
    color user
catch
    color default
endtry

" Basic Setting
set vb t_vb=
set clipboard=unnamed
set nocompatible

set cursorline
set nonu

set noswapfile
set splitright
set linebreak
set showcmd
set scrolloff=4
set incsearch
set ignorecase
set hlsearch

set expandtab
set shiftwidth=4
set tabstop=4

set ai
filetype indent on
syntax on

set path+=**
set wildmenu

filetype plugin on

" User Mapping
"inoremap ( ()<Esc>i
"inoremap " ""<Esc>i
"inoremap ' ''<Esc>i
"inoremap [ []<Esc>i
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

noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

au FileType make setlocal noexpandtab

" Practice key
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

" Tag Jumping
command! MakeTags !ctags -R .

" Netrw
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
"let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'
let g:netrw_winsize = 25

noremap <unique> <c-r> <Plug>NetrwRefresh
noremap <silent> <F2> :call ToggleNetrw()<CR>

function! OpenToRight()
    :normal v
    let g:path=expand('%:p')
    :q!
    execute 'belowright vnew' g:path
    :normal <C-l>
endfunction

let g:NetrwIsOpen=0

function! ToggleNetrw()
    if g:NetrwIsOpen
        let i = bufnr("$")
        while (i >= 1)
            if (getbufvar(i, "&filetype") == "netrw")
                silent exe "bwipeout " . i
            endif
            let i-=1
        endwhile
        let g:NetrwIsOpen=0
    else
        let g:NetrwIsOpen=1
        silent Lexplore
    endif
endfunction

function! NetrwMappings()
    noremap <buffer> <C-l> <C-w>l
    noremap <buffer> V :call OpenToRight()<CR>
endfunction

augroup netrw_mappings
    au!
    au filetype netrw call NetrwMappings()
augroup END

au WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&filetype") == "netrw" || &buftype == 'quickfix' |q|endif
