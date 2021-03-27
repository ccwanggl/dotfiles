" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif



call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
     Plug 'sheerun/vim-polyglot'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'junegunn/vim-easy-align'
    Plug 'tpope/vim-sensible'

    " themes 
    Plug 'ajmwagar/vim-deus'
    Plug 'junegunn/seoul256.vim'

    " File Explorer
    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
    Plug 'liuchengxu/vim-which-key', {'on': ['WhichKey', 'WhichKey!']}
    Plug 'ryanoasis/vim-devicons'

    "ranger
    Plug 'kevinhwang91/rnvimr' , {'do': 'make sync'}

    "Auto complate
    
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Snippets
    "Plug 'theniceboy/vim-snippets'

    " c++ formating
    Plug 'google/vim-maktaba' 
    Plug 'google/vim-codefmt' 
    Plug 'google/vim-glaive' 

    if has('nvim')
      Plug 'Shougo/defx.nvim', {'do': ':UpdateRemotePlugins'}
    else
      Plug 'Shougo/defx.nvim'
      Plug 'roxma/nvim-yarp'
      Plug 'roxma/vim-hug-neovim-rpc'
    endif


    " highlight
    "
    Plug 'jackguo380/vim-lsp-cxx-highlight' 
    Plug 'bfrg/vim-cpp-modern'
    Plug 'RRethy/vim-illuminate'
    "Plug 'RRethy/vim-hexokinase'

    Plug 'junegunn/fzf', {'do': {-> fzf#install()}}
    Plug 'junegunn/fzf.vim'


    " leetcode
    Plug 'ianding1/leetcode.vim'

    Plug 'kristijanhusak/defx-icons'
    Plug 'kristijanhusak/defx-git'
    Plug 'mattn/vim-lsp-settings'

    " tags
    Plug 'liuchengxu/vista.vim'
    Plug 'prabirshrestha/vim-lsp'


    " golanguage
    Plug 'fatih/vim-go', {'tag':'*','for': 'go', 'do':':GoInstallBinaries'}


    Plug 'gcmt/wildfire.vim'
    Plug 'tpope/vim-surround'


    " markdown preview
    Plug 'godlygeek/tabular' 
    Plug 'plasticboy/vim-markdown'
    Plug 'iamcco/markdown-preview.vim' , { 'do': 'cd app && yarn install' }
    Plug 'RishabhRD/popfix'
    Plug 'RishabhRD/nvim-cheat.sh'


    Plug 'puremourning/vimspector'


    call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \ if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | q
  \| endif
