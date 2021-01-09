" Manage the coc extensions with coc configuration file
let g:coc_global_extensions = [ 
  \ 'coc-json', 
  \ 'coc-vimlsp',
  \ 'coc-marketplace',
  \ 'coc-prettier',
  \ 'coc-snippets',
  \ 'coc-python',
  \ 'coc-tsserver',
  \ 'coc-terminal',
  \ 'coc-explorer',
  \ 'coc-go',
  \]


" Textedit might fail if hidden is not set. (original Vim not allow u to switch other file if current file not saved)
set hidden


set shortmess+=c
set updatetime=100


inoremap  <<silent><<expr> <TAB>
  \ pumvisible() ? "\<C-n>":
  \ <SID>check_back_space() ? "\<TAB>" :
  \ coc#refresh()
inoremap <<expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1] =~# '\s'
endfunction


"Use <c-Space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <Leader><Tab> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif


if exists('*complate_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif



" Use follow configuration to navigate diagnostics 
"
nmap <silent> <Leader>- <Plug>(coc-diagnostic-prev)
nmap <silent> <Leader>= <Plug>(coc-diagnostic-next)


" Goto code navigation
nmap <silent> <Leader>gd <Plug>(coc-definition)
nmap <silent> <Leader>gy <Plug>(coc-type-definition)
nmap <silent> <Leader>gi <Plug>(coc-implementation)
nmap <silent> <Leader>gr <Plug>(coc-reference)

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

" Shortcut for coc-terminal
nmap  <silent> <Leader>cmd <Plug>(coc-terminal-toggle)


let g:coc_snippet_next = '<C-p>'
let g:coc_snippet_prev = '<C-n>'

imap <C-e> <Plug>(coc-snippets-expand-jump)
let g:snips_author = 'Guoliang'


