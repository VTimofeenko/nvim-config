augroup md_vimrc
	autocmd BufRead,BufNewFile *.md set filetype=markdown
	" standard
	autocmd FileType markdown
				\  set tabstop=4
				\| set shiftwidth=4
				\| set expandtab
				\| set autoindent
	" UI stuff
	autocmd FileType markdown
				\  colorscheme pencil
				\| hi Normal ctermbg=None
				\| AirlineTheme afterglow
	" whitespace removal
	autocmd FileType markdown
				\  let b:leave_my_trailing_space_alone=0
				\| let g:airline#extensions#whitespace#enabled = 0

	" images clipboard paste
	autocmd FileType markdown
				\  let g:mdip_imgdir = 'assets'
				\| let g:mdip_behavior = 'markdown'
				\| nmap <buffer><silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>

	" quick link by hitting ]\
	autocmd FileType markdown
				\  vmap ] S]%
				\| vmap ]\ ]a(|
	" <leader>b - make visual selection bold. Relies on vim-surround
	" Surrounds with single asterisk first, then selects last visual selection and surrounds again.
	" Hacky but works with my workflow
	autocmd FileType markdown
				\  vmap <leader>b S*<CR>gvS*<CR>


augroup END
" TagBar
let g:tagbar_type_markdown = {
	\ 'ctagstype': 'markdown',
	\ 'ctagsbin' : stdpath('data') . '/plugged/markdown2ctags/markdown2ctags.py',
	\ 'ctagsargs' : '-f - --sort=yes --sro=»',
	\ 'kinds' : [
		\ 's:sections',
		\ 'i:images'
	\ ],
	\ 'sro' : '»',
	\ 'kind2scope' : {
		\ 's' : 'section',
	\ },
	\ 'sort': 0,
\ }
