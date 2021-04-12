call plug#begin(stdpath('data') . '/plugged')
Plug 'scrooloose/nerdtree' " file list
Plug 'tpope/vim-surround' " glorious and must-have surround plugin
Plug 'junegunn/goyo.vim' " distraction-free writing
Plug 'bling/vim-airline' " airline
Plug 'vim-airline/vim-airline-themes' " themes for airline
Plug 'rafi/awesome-vim-colorschemes' " eyecandy
Plug 'reedes/vim-colors-pencil' " pencil colorscheme
Plug 'tpope/vim-commentary' " toggleable comments
Plug 'majutsushi/tagbar'  " show tags in a bar (functions etc) for easy browsing
Plug 'Raimondi/delimitMate' " autoclose brackets
Plug 'vimwiki/vimwiki' " vimwiki
Plug 'junegunn/fzf.vim' " fzf is awesome
Plug 'dkarter/bullets.vim' " for bullet ordering
" autocompletion
Plug 'roxma/nvim-yarp' " dependency of ncm2
Plug 'ncm2/ncm2' " the autocomplete plugin
Plug 'ncm2/ncm2-bufword' " buffer keyword completion
Plug 'ncm2/ncm2-path' " filepath completion
Plug 'ncm2/ncm2-syntax' | Plug 'Shougo/neco-syntax'
Plug 'wellle/tmux-complete.vim' " completes from tmux panes
" autocomplete end
" file-specific plugins
Plug 'cespare/vim-toml', { 'for': ['toml'] } " syntax for toml files
Plug 'mboughaba/i3config.vim', { 'for': ['i3config'] } " i3 file syntax
Plug 'jszakmeister/markdown2ctags', { 'for': ['markdown'] } " for markdown tagbar
Plug 'VTimofeenko/confluencewiki-img-paste.vim', { 'for': ['confluencewiki', 'markdown'] } " confluencewiki image paste

Plug 'gentoo/gentoo-syntax', { 'for': ['ebuild', 'gentoo-init-d'] } " ebuilds
Plug 'VTimofeenko/ncm2-ebuild', { 'for': ['ebuild'] } " ncm2 completion for ebuild
Plug 'VTimofeenko/vim-todofile', { 'for': ['todofile'] }
" Pass clean
Plug 'https://git.home.local/VT/vim-redact-pass.git'
call plug#end()
