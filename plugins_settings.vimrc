" airline settings
let g:airline_theme='jellybeans'
let g:airline_powerline_fonts = 1
let g:airline_section_y = ""
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_close_button = 0

" Goyo plugin makes text more readable when writing prose:
map <leader>f :Goyo \| set bg=light \| set linebreak<CR>
" Goyo's width will be the line limit in mutt.
autocmd BufRead,BufNewFile /tmp/neomutt* let g:goyo_width=80
autocmd BufRead,BufNewFile /tmp/neomutt* :Goyo \| set bg=light

" Nerd tree
map <leader>n :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Syntastic
let g:syntastic_filetype_map = {"ebuild": "sh"}

" Tagbar
map <C-t> :TagbarToggle<CR>
" Disable tagbar's '?' shortcut to handle backwards search
let g:tagbar_map_help = ["<F1>"]

let g:tagbar_type_confluencewiki = {
			\ 'ctagstype' : 'confluencewiki',
			\ 'ctagsbin' : '/usr/bin/ctags',
			\ 'ctagsargs' : '--sort=no -o - --options=/home/vt/.dotfiles/vim_configs/nvim/tagbar/confluencewiki.ctags --fields=nksaSmt',
			\ 'kinds' : [
				\ 'o:h1:level one header',
				\ 't:h2:level two header',
				\ 'T:h3:level three header',
				\ 'f:h4:level four header',
				\ 'i:h5:level five header',
				\ 's:h6:level six header',
			\ ],
			\ 'sro' : '»',
			\ 'kind2scope' : {
				\ 'o': 'h1',
				\ 't': 'h2',
				\ 'T': 'h3',
				\ 'f': 'h4',
				\ 'i': 'h5',
				\ 's': 'h6',
			\ },
			\ 'sort': 0
			\}

" Autocompletion
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect
inoremap <c-c> <ESC>
inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")
let ncm2#popup_delay = 5
let ncm2#complete_length = [[1,1]]
let g:ncm2#matcher = 'substrfuzzy'
set pumheight=5
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" fzf
nnoremap <C-p> :GFiles<CR>
nnoremap <leader>h :History<CR>

" vimwiki
let g:vimwiki_list = [{'path': '~/Nextcloud/vimwiki/wiki', 'path_html': '~/Nextcloud/vimwiki/html'}]
" disable capture of markdown filetype
let g:vimwiki_global_ext = 0
" disable table mappings, they mess with the tab in insert mode
let g:vimwiki_table_mappings = 0
function! VimwikiLinkHandler(link)
	" Use Vim to open external files with the 'vfile:' scheme.  E.g.:
	"   1) [[vfile:~/Code/PythonProject/abc123.py]]
	"   2) [[vfile:./|Wiki Home]]
	let link = a:link
	if link =~# '^vfile:'
		let link = link[1:]
	else
		return 0
	endif
	let link_infos = vimwiki#base#resolve_link(link)
	if link_infos.filename == ''
		echomsg 'Vimwiki Error: Unable to resolve link!'
		return 0
	else
		exe 'vsplit ' . fnameescape(link_infos.filename)
		return 1
	endif
endfunction

" bullets
let g:bullets_enabled_file_types = [
    \ 'markdown',
    \ 'text',
    \ 'gitcommit',
    \ 'scratch'
    \]

" black
let g:black_linelength = 119
