augroup ebuild_vimrc
	autocmd BufRead,BufNewFile *.ebuild set filetype=ebuild
	" plugins
	autocmd FileType ebuild
				\  set statusline+=%#warningmsg#
				\| set statusline+=%{SyntasticStatuslineFlag()}
				\| set statusline+=%*
				\| let g:syntastic_sh_shellcheck_args = '-s bash -e "SC2034,SC2016,SC2191,SC2037"'
				\| let g:syntastic_always_populate_loc_list = 1
				\| let g:syntastic_auto_loc_list = 1
				\| let g:syntastic_check_on_open = 1
				\| let g:syntastic_check_on_wq = 0
	" technically not ebuild, but belongs here
	autocmd BufRead,BufNewFile metadata.xml set filetype=xml
augroup END
