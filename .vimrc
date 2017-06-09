execute pathogen#infect()
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

set encoding=utf-8
set fileencodings=utf-8

colo void
syntax enable
set t_Co=256
set relativenumber

au InsertEnter * :set norelativenumber
au InsertLeave * :set relativenumber

let g:airline_powerline_fonts = 1

let g:syntastic_javascript_checkers = ['jshint', 'jsxhint']
let g:syntasic_swift_checkers = ['swiftpm', 'swiftlint']

let g:netrw_list_hide = '.*\.pyc,.*\.swp$'

" Lisp SLIME stuff
let g:slime_target = "tmux"
let g:slime_paste_file = "$HOME/.slime_paste"

" Erlang stuff
au BufNewFile,BufRead *.erl,*.es,*.hrl,*.yaws,*.xrl setf erlang

set expandtab
set tabstop=4
set shiftwidth=4
set nu
set modeline

let g:airline_theme = 'jellybeans'

let g:flake8_ignore="W0232"

let g:jsx_ext_required = 0
let g:jsx_pragma_required = 1

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <tab> <C-w><C-w>
inoremap <M> <Esc>

nnoremap <Space> za

" Format HTML into JS concat'd strings and back
vmap <silent> ;h :s?^\(\s*\)+ '\([^']\+\)',*\s*$?\1\2?g<CR>
vmap <silent> ;q :s?^\(\s*\)\(.*\)\s*$? \1 + '\2'?<CR>

inoremap <Up> <NOP>
vnoremap <Up> <NOP>
inoremap <Down> <NOP>
vnoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>
vnoremap <Left> <NOP>
vnoremap <Right> <NOP>
