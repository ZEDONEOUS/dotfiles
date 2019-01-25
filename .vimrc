set nowrap
set timeout 
set hlsearch
set expandtab
set tabstop=4 
set foldlevel=0
set shiftwidth=4 
set softtabstop=0 
set relativenumber
set ttimeoutlen=0
set encoding=UTF-8
set updatetime=100
set foldmethod=indent
set guifont=DroidSansMono\ Nerd\ Font\ 11

set splitbelow

filetype plugin on
syntax on

" -- PLUG IMPORTINGS
call plug#begin('~/.vim/plugged')

    Plug 'mxw/vim-jsx'
    Plug 'posva/vim-vue'
    Plug 'kien/ctrlp.vim'
    Plug 'gko/vim-coloresque'
    Plug 'mattn/emmet-vim'
    Plug 'SirVer/ultisnips'
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
    Plug 'leafgarland/typescript-vim'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'othree/javascript-libraries-syntax.vim'

call plug#end()

" -- DEFAULT FILETYPE
if &filetype==""
  setfiletype cfg
endif

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
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

" -- AIRLINE
let g:airline_theme='base16'

" -- EMMET
let g:user_emmet_leader_key='<leader>'

" -- SNIPPETS
let g:UltiSnipsExpandTrigger="<leader>s"
let g:UltiSnipsJumpForwardTrigger="<c-n>"
let g:UltiSnipsJumpBackwardTrigger="<c-p>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/custom_snippets']

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

" -- VIM VUE PLUGIN
let g:vim_vue_plugin_load_full_syntax = 1
let g:vim_vue_plugin_use_pug = 1
