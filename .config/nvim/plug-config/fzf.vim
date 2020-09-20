noremap <silent> <C-p> :Files<CR>


command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, {'options': ['--layout=reverse', '--info=inline', '--preview', 'bat {}']}, <bang>0)

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

noremap <silent> <c-f> :Rg<CR>
noremap <silent> <c-l> :Lines<CR>
noremap <silent> <c-w> :Buffers<CR>
noremap <silent> <c-h> :History<CR>
noremap <silent> <c-s-h> :History:<CR>


command! -bang -nargs=* GGrep
  \ call fzf#vim#grep(
  \   'git grep --line-number -- '.shellescape(<q-args>), 0,
  \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)


function! RipgrepFzf(query, fullscreen)
	  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case -- %s || true'
	    let initial_command = printf(command_fmt, shellescape(a:query))
	      let reload_command = printf(command_fmt, '{q}')
	        let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
		  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
	  endfunction

	  command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)


autocmd! FileType fzf set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler


function! s:fzf_statusline()
	" Override statusline as you like
	highlight fzf1 ctermfg=161 ctermbg=251
	highlight fzf2 ctermfg=23 ctermbg=251
	highlight fzf3 ctermfg=237 ctermbg=251
	setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
endfunction
  
autocmd! User FzfStatusLine call <SID>fzf_statusline()

function! s:list_buffers()
	redir => list
	silent ls
	redir END
	return split(list, "\n")
endfunction

function! s:delete_buffers(lines)
  execute 'bwipeout' join(map(a:lines, {_, line -> split(line)[0]}))
endfunction

command! BD call fzf#run(fzf#wrap({
    \ 'source': s:list_buffers(),
    \ 'sink*': { lines -> s:delete_buffers(lines) },
    \ 'options': '--multi --reverse --bind ctrl-a:select-all+accept'
    \ }))

noremap <c-d> :BD<CR>

let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.8 } }



let g:fzf_preview_window = 'right:60%'
let g:fzf_commits_log_options = '--graph --color=always --format="%c(auto)%h%d %s %c(black)%C(bold)%cr"'


