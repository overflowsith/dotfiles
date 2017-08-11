filetype on
filetype plugin indent on
filetype plugin on
syntax on

execute pathogen#infect()

set background=dark
set backspace=indent,eol,start
"set nocursorcolumn
"set cursorline
set showcmd
set showmode
set showtabline=1
set startofline
set showmatch
set smartcase
set laststatus=2
set number

set hidden
set history=100

filetype indent on
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smartindent
set autoindent

set hlsearch
nnoremap <F3> :nohlsearch<CR>

"Ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

"NERDTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeMapActivateNode='<right>'
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

"git-gutter
let g:gitgutter_sign_column_always=1
let g:gitgutter_realtime=1

map <leader>s :source ~/.vimrc<CR>

"php.vim
function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END
