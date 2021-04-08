" plugin manage plug
source $HOME/.config/nvim/vim-plug/plugins.vim

" general settings eg: line number ...
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/path.vim

" key map setting
source $HOME/.config/nvim/keys/mappings.vim

" tagbar like 
source $HOME/.config/nvim/plug-config/vista.vim


" themes
source $HOME/.config/nvim/themes/seoul256.vim
"source $HOME/.config/nvim/themes/deus.vim
source $HOME/.config/nvim/themes/airline.vim

"#################################################################################################### 
"######################################## File Manager ##############################################
"#################################################################################################### 

"source $HOME/.config/nvim/plug-config/nerdtree.vim
source $HOME/.config/nvim/plug-config/defx.vim



source $HOME/.config/nvim/plug-config/rnvimr.vim
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/cpp.vim


source $HOME/.config/nvim/plug-config/highlight.vim
source $HOME/.config/nvim/plug-config/illuminate.vim
source $HOME/.config/nvim/plug-config/fzf.vim


"#################################################################################################### 
"######################################## Leetcode ##################################################
"#################################################################################################### 
source $HOME/.config/nvim/plug-config/leetcode.vim


"#################################################################################################### 
"######################################## Markdown ##################################################
"#################################################################################################### 

source $HOME/.config/nvim/plug-config/markdownpreview.vim


"#################################################################################################### 
"######################################## coc extersion configuration ###############################
"#################################################################################################### 

source $HOME/.config/nvim/plug-config/coc-explorer.vim

lua << EOF
require'lspconfig'.clangd.setup {    
  on_attach = on_attach,    
  default_config = {        
    cmd = {            
      "clangd", "--background-index", "--pch-storage=memory",            
      "--clang-tidy", "--suggest-missing-includes"        
    },        
    filetypes = {"c", "cpp", "objc", "objcpp"},        
    
  }
}

EOF
