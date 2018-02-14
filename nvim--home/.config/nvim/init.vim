call plug#begin('~/.local/share/nvim/plugged')
	" File tree
	Plug 'scrooloose/nerdtree'
	" Airline
	Plug 'vim-airline/vim-airline'
	" Airline-Themes
	Plug 'vim-airline/vim-airline-themes'
	" Better search
	Plug 'haya14busa/incsearch.vim'
	" Commenter
	Plug 'scrooloose/nerdcommenter'
	" Easymotion
	Plug 'easymotion/vim-easymotion'
	" Emmet
	Plug 'mattn/emmet-vim'
	" Colors highlight
	Plug 'lilydjwg/colorizer'
	" Finder
	Plug 'ctrlpvim/ctrlp.vim'
	" Whitespace highlight
	Plug 'ntpeters/vim-better-whitespace'
	" Highlight tag pair
	Plug 'gregsexton/matchtag'

	"Autocomplete
	"
	" Core
	if has('nvim')
		Plug 'Shougo/deoplete.nvim'
	else
		Plug 'Shougo/deoplete.nvim'
		Plug 'roxma/nvim-yarp'
		Plug 'roxma/vim-hug-neovim-rpc'
	endif
	" Vim
	Plug 'Shougo/neco-vim'
	" clang
	Plug 'justmao945/vim-clang'

	"Language support
	"
	" HTML5
	Plug 'othree/html5.vim'
	" Jade
	Plug 'digitaltoad/vim-jade'
	" CSS3
	Plug 'hail2u/vim-css3-syntax'
	" LESS
	Plug 'groenewege/vim-less'
	" Stylus
	Plug 'wavded/vim-stylus'
	" JS
	Plug 'pangloss/vim-javascript'
	" Coffee script
	Plug 'kchmck/vim-coffee-script'
	" i3 config
	Plug 'PotatoesMaster/i3-vim-syntax'
	" C
	Plug 'vim-scripts/c.vim'

	" Colorscheme
	"
	" Base16
	Plug 'w0ng/vim-hybrid'
call plug#end()

" Plugin Settings
"
" NERDTree
let NERDTreeShowHidden = 1
" Incsearch
let g:incsearch#auto_nohlsearch = 1
" Deoplete
let g:deoplete#enable_at_startup = 1
" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='hybridline'


" Settings
"
" Plain text automatic line break
set textwidth=80
" Highlight column
set colorcolumn=80
" Show matches while typing search pattern
set incsearch
" Show previous search pattern
set hlsearch
" Ignorecase while search
set ignorecase
" Disable unnecessary redraw
set lazyredraw
" Enable RegExp in search
set magic
" Disable break line
set nowrap
" Show line number
set number
" Default file encodings
set fileencodings=utf-8,cp1251,koi8-r,cp866
" Show commands completion in bottom menu
set wildmenu
" Enable cursorline
set cursorline
" Use system clipboard by default
set clipboard=unnamedplus

" Tab setup
"
" Tab size in spaces
set tabstop=2
" Tab size in spaces for insertion and extraction operators
set shiftwidth=2
" Tab in insert mode
set softtabstop=2
" Remove spaces like tabs
set smarttab

" Color settings
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1
set t_Co=256
set background=dark
colorscheme hybrid


" Binds
"
" NERDTree
map <silent> <F2> :NERDTreeToggle<CR>

" Incsearch
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

" Commenter
nmap <A-/> <leader>c<space>
vmap <A-/> <leader>c<space>

" Easymotion
nmap ; <Plug>(easymotion-overwin-f)

" CtrlP
let g:ctrlp_show_hidden = 1

" Better Whitespace
highlight ExtraWhitespace guibg=#282828

" Split navigation
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
