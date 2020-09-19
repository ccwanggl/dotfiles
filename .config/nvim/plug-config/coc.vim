
let g:coc_global_extensions = [ 
  \ 'coc-json', 
  \ 'coc-vimlsp',
  \ 'coc-marketplace',
  \ 'coc-prettier',
  \ 'coc-snippets',
  \]

set shortmess+=c
set updatetime=100

inoremap  <<silent><<expr> <TAB>
  \ pumvisible() ? "\<C-n>":
  \ <SID>check_back_space() ? "\<TAB>" :
  \ coc#refresh()

inoremap <<expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"


if exists('*complate_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif



nmap <silent> <space>- <Plug>(coc-diagnostic-prev)
nmap <silent> <space>= <Plug>(coc-diagnostic-next)


" Goto code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-reference)


nnoremap <silent> K :call <SID>show_documention() <CR>

function! s:show_documention()
  if(index(['vim', 'help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif

endfunction

nmap <LEADER>rn <Plug>(coc-rename)


imap <C-l> <Plug>(coc-snippets-expand)
vmap <C-e> <Plug>(coc-snippets-select)

let g:coc_snippet_next = '<C-p>'
let g:coc_snippet_prev = '<C-n>'

imap <C-e> <Plug>(coc-snippets-expand-jump)
let g:snips_author = 'Guoliang'


