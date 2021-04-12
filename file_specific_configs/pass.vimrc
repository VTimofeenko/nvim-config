autocmd VimEnter
	\ /dev/shm/pass.?*/?*.txt
	\,$TMPDIR/pass.?*/?*.txt
	\,/tmp/pass.?*/?*.txt
	\| nmap <leader>u oUsername:
