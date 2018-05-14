
"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"Powerline fonts
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"Powerline
"Plugin 'https://github.com/Lokaltog/vim-powerline.git'

"Gruv box
Plugin 'git://github.com/morhetz/gruvbox.git'

"Haskell
"Plugin 'git://github.com/neovimhaskell/haskell-vim.git'

"Indent Line
Plugin 'Yggdroot/indentLine'

"JavaScript Indent
"Plugin 'git://github.com/pangloss/vim-javascript.git'

"Nerd Tree
Plugin 'git://github.com/scrooloose/nerdtree.git'

"Syntasitc
Plugin 'git://github.com/vim-syntastic/syntastic.git'

"Easy motion
"Plugin 'git://github.com/easymotion/vim-easymotion.git'

"Vim Fugitive
Plugin 'tpope/vim-fugitive'

"Javascript Syntax
"Plugin 'jelera/vim-javascript-syntax'

"Colorizer
Plugin 'git://github.com/chrisbra/Colorizer.git'

"Latex
Plugin 'git://github.com/xuhdev/vim-latex-live-preview.git'

"Go
Plugin 'fatih/vim-go'
"Plugin 'nsf/gocode', {'rtp': 'vim/'}

"neocomplete
Plugin 'git://github.com/Shougo/neocomplete.vim.git'

"Trailling Whitespace
Plugin 'git://github.com/bronson/vim-trailing-whitespace.git'

" Tagbar
"Plugin 'git://github.com/majutsushi/tagbar'

"Puppet highlighting
Plugin 'git://github.com/puppetlabs/puppet-syntax-vim.git'

"Ruby highlighting
"Plugin 'vim-ruby/vim-ruby'

"Better cpp syntax highlighting
Plugin 'octol/vim-cpp-enhanced-highlight'

call vundle#end()            " required

set nocompatible              " be iMproved, required
syntax on
filetype plugin indent on    " required
filetype plugin on

let mapleader = ","

:set number

"Tab specific option
set tabstop=4                   "A tab is 8 spaces
set expandtab                   "Always uses spaces instead of tabs
set softtabstop=4               "Insert 4 spaces when tab is pressed
set shiftwidth=4                "An indent is 4 spaces
set shiftround                  "Round indent to nearest shiftwidth multiple


set laststatus=2
set t_Co=256
set background=dark
set encoding=utf-8
colorscheme gruvbox

"power-line
let g:airline_powerline_fonts = 1

let g:airline_theme='gruvbox'

let g:powerline_symbols = "fancy"
set guifont=Source\ Code\ Pro\ for\ Powerline "make sure to escape the spaces in the name properly"

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
if !exists("g:syntax_on")
    syntax enable
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''


set ttimeoutlen=20

":map <silent> <C-m> :VimShellPop<CR><ESC>:wincmd J<CR>

:set noshowmode
"Mouse moves splits
set mouse=a


"Terminal
set splitbelow
let g:ConqueTerm_StartMessages = 0
map <S-t> :split <CR> :resize 10 <CR> :ConqueTerm bash <CR>

map <C-w> <C-w><C-w>

"NERDTree
let NERDTreeShowHidden=1

"Spell Checking
autocmd BufNewFile,BufRead *.txt set spell spelllang=en_gb
autocmd BufNewFile,BufRead *.tex set spell spelllang=en_gb
autocmd BufNewFile,BufRead *.rst set spell spelllang=en_gb
autocmd BufNewFile,BufRead *.yaml set spell spelllang=en_gb
autocmd BufNewFile,BufRead *.html set spell spelllang=en_gb
autocmd BufNewFile,BufRead *.md set spell spelllang=en_gb

"neocomplete
let g:neocomplete#enable_at_startup = 1

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

" Go build
cmap gg GoBuild <CR>
cmap tt !go test -v <CR>


" Copy/Paste to system clipboard
vmap <C-c> "+y
vmap <C-x> "+c
vmap <C-v> <ESC>"+p
imap <C-v> <ESC>"+pa

"Indent Line char
let g:indentLine_char = '¦'

"Highlight search
set hlsearch
nnoremap <silent> <C-l> :nohl<CR><C-l>

"latext shortcut
"nnoremap <silent> <C-k> :!pdflatex -shell-escape % <CR> <CR>

"Auto word wrap at 80 chars
:set tw=80

"latex no conceal
let g:tex_conceal = ""

"Stop compile check on save
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
nnoremap <C-w>E :SyntasticCheck<CR> :SyntasticToggleMode<CR>

"word wrap 80 chars for md files
au BufRead,BufNewFile *.md setlocal textwidth=80

"Spell check on git commit
autocmd FileType gitcommit setlocal spell

"Ensure spell check highlighting
hi clear SpellBad
hi SpellBad cterm=underline

set conceallevel=1
let g:indentLine_conceallevel=1
autocmd VimEnter,WinEnter,BufNewFile,BufRead,BufEnter,TabEnter * IndentLinesReset
