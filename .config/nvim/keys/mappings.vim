" Set leader key
let g:mapleader=";"

" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resise windows
nnoremap <M-j> :resize -2<CR>
nnoremap <M-k> :resize +2<CR>
nnoremap <M-h> :vertical resize -2<CR>
nnoremap <M-l> :vertical resize +2<CR>

inoremap jk <ESC>

" Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<ESC>


nnoremap <Leader>le <ESC>0
nnoremap <Leader>lb <ESC>$

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>

" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Use control-c instead of escape
nnoremap <C-c> <Esc>

" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

nnoremap j gj
nnoremap k gk


" Better window nav {{{

  nnoremap <leader>;a <C-w>h
  nnoremap <leader>;d <C-w>l
  nnoremap <leader>;s <C-w>j
  nnoremap <leader>;w <C-w>k

  nnoremap <leader>o o<ESC>^Da
  nnoremap <leader>0 0<ESC>^Da

"}}}
"
"
" Input special char ----------{{{
  inoremap ;sb []<left>
  inoremap ;cb {}<left>
  inoremap ;ab <><left>
  inoremap ;pa ()<left>
  inoremap ;dq ""<left>
  inoremap ;sq ''<left>
  inoremap ;pc %
  inoremap ;sh #
  inoremap ;at @
  inoremap ;not !
  inoremap ;as *
  inoremap ;ad &
  inoremap ;un _
  inoremap ;ar ->
  inoremap ;do $
  inoremap ;cr \n
" }}}
