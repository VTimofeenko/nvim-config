let mapleader=','

" autosave
set autowriteall

" disable mouse
set mouse=

set nocompatible
filetype plugin on
syntax on

" UI stuff
set number relativenumber
colorscheme afterglow
set splitbelow splitright

" Search stuff
set nohlsearch
set incsearch
set ignorecase
set smartcase
nnoremap ,<space> :nohlsearch<CR>

" Command completion
set wildmode=longest:full,full

" Disables automatic commenting on newline:
autocmd FileType * setlocal
			\ formatoptions-=c
			\ formatoptions-=r
			\ formatoptions-=o

" Spell-check set to <leader>o, 'o' for 'orthography':
map <leader>o :setlocal spell! spelllang=en_us<CR>

" Shortcutting split navigation, saving a keypress:
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Copy selected text to system clipboard
vnoremap <C-c> "+y
map <C-p> "+P

" make Y act the same as C and D - until end of line
map Y y$

" tab settings
nnoremap tn :tabnew<Space>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>

" whitespace removal stuff
" credit https://vi.stackexchange.com/questions/454/whats-the-simplest-way-to-strip-trailing-whitespace-from-all-lines-in-a-file/456#456
fun! TrimWhitespace()
	if ! exists("b:leave_my_trailing_space_alone") || b:leave_my_trailing_space_alone == 0
		let l:save = winsaveview()
		keeppatterns %s/\s\+$//e
		call winrestview(l:save)
	endif
endfun
" no <CR> necessary here!
autocmd BufWritePre * :call TrimWhitespace()
let b:leave_my_trailing_space_alone = 0

" save position
augroup AutoSaveFolds
	autocmd!
	autocmd BufWinLeave,BufLeave,BufWritePost ?* nested silent! mkview!
	autocmd BufWinEnter ?* silent! loadview
augroup END

" terminal
" switch from term back
tnoremap <leader>t <C-\><C-n>

" enable jinja template hotkey for arbitrary file
fun! EnableJinjaShortcuts()
	inoremap {{ {{<Space><Space>}}<Esc>hhha
endfun
nnoremap <leader>j :call EnableJinjaShortcuts()<cr>
