filetype off

call pathogen#infect()
call pathogen#helptags()

set nocompatible
set number
set noswapfile
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
set foldmethod=syntax
set foldlevelstart=20
set laststatus=2
set incsearch ignorecase smartcase
set list lcs=tab:>-,trail:.

syntax on
filetype plugin indent on

let mapleader=","
let g:tagbar_ctags_bin="/usr/local/bin/ctags"

nmap ; :
nmap <silent> <leader>n :NERDTreeToggle<CR>
nmap <silent> <leader>t :CommandT<CR>
nmap <silent> <leader>tt :TagbarToggle<CR>
nmap <silent> <leader>l :set list!<CR>
au FileType go nmap <Leader>dd <Plug>(go-doc)
au FileType go nmap <Leader>r <Plug>(go-run)
" au BufWritePost,FileWritePost *.go execute 'GoLint' | cwindow

map <D-j> :tabprev<CR>
map <D-k> :tabnext<CR>

nnoremap <expr> gV '`[' . getregtype()[0] . '`]'

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

let Grep_Default_Options='-i --after-context=3 --before-context=3'
nnoremap <silent><leader>rg :Rgrep<cr>
nnoremap <silent><leader>g :Grep<cr>
" let g:go_fmt_command='goimports'

inoremap <S-Tab> <C-V><Tab>

python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

let g:nerdtree_plugin_open_cmd = 'open'

" nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
vnoremap <leader>" <esc>`<i"<esc>`>a"<esc>
