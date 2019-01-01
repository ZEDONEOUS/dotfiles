set nowrap
set timeout 
set hlsearch
set expandtab
set tabstop=4 
set foldlevel=1
set shiftwidth=4 
set softtabstop=0 
set relativenumber
set ttimeoutlen=0
set encoding=UTF-8
set updatetime=100
set foldmethod=indent
set guifont=DroidSansMono\ Nerd\ Font\ 11

set splitbelow

syntax on

" -- PLUG IMPORTINGS
call plug#begin('~/.vim/plugged')

    Plug 'mxw/vim-jsx'
    Plug 'kien/ctrlp.vim'
    Plug 'mattn/emmet-vim'
    Plug 'bling/vim-airline'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-surround'    
    Plug 'scrooloose/nerdtree'
    Plug 'jiangmiao/auto-pairs'
    Plug 'valloric/youcompleteme'
    Plug 'airblade/vim-gitgutter'
    Plug 'chriskempson/base16-vim'
    Plug 'pangloss/vim-javascript'
    Plug 'scrooloose/nerdcommenter'
   Plug 'vim-airline/vim-airline-themes'

call plug#end()

" -- YOUCOMPLETEME
let g:ycm_python_interpreter_path = ''
let g:ycm_python_sys_path = []
let g:ycm_extra_conf_vim_data = [
  \  'g:ycm_python_interpreter_path',
  \  'g:ycm_python_sys_path'
  \]
let g:ycm_global_ycm_extra_conf = '~/.vim/global_extra_conf.py'

" -- NERDTREE
map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$', '__pycache__', '__init__.py']
let NERDTreeMinimalUI = 1

" -- NERDCOMMENTER
let g:NERDSpaceDelims = 1

" -- COLORS
let base16colorspace=256
colorscheme base16-apathy

" -- AIRLINE
let g:airline_theme='base16'

" -- EMMET
let g:user_emmet_leader_key='<leader>'

" -- CTRLP
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn|class))$'

" -- MAPPINGS
noremap <F4> :set hlsearch! hlsearch?<CR>

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

let g:gitgutter_sign_added = '/+'
let g:gitgutter_sign_modified = '/~'
let g:gitgutter_sign_removed = '/-'

highlight LineNr ctermbg=none
highlight YcmErrorLine guibg=#ffffff
highlight YcmWarningLine guibg=#ffffff
highlight YcmErrorSection guibg=#ffffff
highlight YcmWarningSection guibg=#ffffff
