" PowerShell adaptation and improvements - José M J L P <josemjuniortk@gmail.com>
" Base config by - Rafael Garcia-Suarez <rgarciasuarez@mandrakesoft.com> 

"Configuração do Vundle Plugin
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
call plug#begin('~/AppData/Local/nvim/plugged')

"call vundle#rc()
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
"Plugin 'VundleVim/Vundle.vim'
Plug 'andviro/flake8-vim'
"Plugin 'w0rp/ale', { 'do': 'pip install isort yapf' }
Plug 'davidhalter/jedi-vim'
"Plugin 'vim-syntastic/syntastic'
Plug 'itchyny/calendar.vim'
Plug 'vim-latex/vim-latex'
Plug 'freitass/todo.txt-vim'
Plug 'mattn/emmet-vim'
Plug 'maralla/completor.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-markdown'
"Plug 'scrooloose/nerdtree.git'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree' | Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'alvan/vim-closetag'
Plug 'valloric/matchtagalways'
Plug 'othree/html5.vim'
Plug 'sheerun/vim-polyglot'
Plug 'yggdroot/indentline'
Plug 'bronson/vim-trailing-whitespace'
Plug 'vim-scripts/c.vim'
Plug 'reewr/vim-monokai-phoenix'
Plug 'raimondi/delimitmate'
Plug 'frazrepo/vim-rainbow'

" Add all your plugins here (note older versions of Vundle used Bundle
" instead of Plugin)

" All of your Plugins must be added before the following line
"call vundle#end()            " required
call plug#end()
filetype plugin indent on    " required

" for vim 7
  set t_Co=256

" for vim 8
  if (has("termguicolors"))
   set termguicolors
  endif

" For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Or if you have Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

" Theme
syntax enable
colorscheme monokai-phoenix
"Fim da configuração do Vundle Plugin
"#####################################################################

" Don't set vi-compatibility
set nocp

" Syntax highlighting only for vim-enhanced
if has("syntax")
    syntax on
endif

" I know it's horrible for a vi master but useful for newbies.
imap <C-a> <Esc>I
imap <C-e> <ESC>A
map <C-Tab> <C-W>w
imap <C-Tab> <C-O><C-W>w
cmap <C-Tab> <C-C><C-Tab>

" Some macros to manage the buffer of vim
map <F5> :bp<C-M>
map <F6> :bn<C-M>
map <F7> :bd<C-M>

"Ativar o NERDTree
map <C-T> :NERDTree<CR>

"Compilar .tex para pdf
map <F8> :!pdflatex % && start %:r.pdf<CR>
map <F8> :!pdflatex % && start %:t:r.pdf<CR>

" Default backspace like normal
set bs=2

" Terminal for 80 char ? so vim can play till 79 char.
"set textwidth=79

" Some options deactivated by default (remove the "no" to enable them)
set nobackup
set nohlsearch
set noincsearch

" Always display a status-bar
" set laststatus=2

" Show the position of the cursor
set ruler

" Uncomment this to disable wrap
"set nowrap

" Show matching parentheses
set showmatch

" Make % work with <>
set mps+=<:>

" Habilitar o destaque de sintaxe em markdown
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']

" Configuração o Ale
let g:ale_fix_on_save = 1
let g:ale_fixers = {
\   'python': [
\       'isort',
\       'yapf',
\       'remove_trailing_lines',
\       'trim_whitespace'
\   ]
\}

" Autocompletar no vim
let g:jedi#completions_command = "<C-N>"

" Habilitar número de linhas
set number

" Alternar exibição de número de linhas (facilita na hora de copiar)
" nnoremap  :set nonumber!: set foldcolumn=0

" Configurar o vim no padrão pep8 do python
" #######################################################################################
" Linhas com mais de 79 colunas serão divididas
set textwidth=200

" A operação >> recua 4 colunas; << diminui o recuo em 4 colunas
set shiftwidth=4

" O pressionamento da tecla TAB é exibido como 4 colunas
set tabstop=4

" Insere espaços quando a tecla TAB é pressionada
set expandtab

" Insere/exclui 4 espaços com o pressionamento de TAB/BACKSPACE
set softtabstop=4

" Arredonda o recuo para um múltiplo de 'shiftwidth'
set shiftround

" Alinha o recuo da nova linha ao da linha anterior
set autoindent

set laststatus=2

set background=dark

"Fim da configuração do padrão pep8 do python
" #######################################################################################

