"
"   ██╗   ██╗ ██╗ ███╗   ███╗ ██████╗   ██████╗
"   ██║   ██║ ██║ ████╗ ████║ ██╔══██╗ ██╔════╝
"   ██║   ██║ ██║ ██╔████╔██║ ██████╔╝ ██║
"   ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║ ██╔══██╗ ██║
" ██╗╚████╔╝  ██║ ██║ ╚═╝ ██║ ██║  ██║ ╚██████╗
" ╚═╝ ╚═══╝   ╚═╝ ╚═╝     ╚═╝ ╚═╝  ╚═╝  ╚═════╝
"
syntax on
"Show line numbers
set number
" for gitgutter
set updatetime=100
set lazyredraw        " Don't redraw while executing macros

set shortmess+=c      " Don't show ins-completion-menu messages

set ignorecase
set smartcase
set incsearch
set hlsearch
nnoremap <leader><space> :nohlsearch<CR>

" Let backspace work like a normal editor
"
set backspace=2
" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

set expandtab
set tabstop=2
set shiftwidth=2
set hidden
set history=1000
set nowrap
set autoindent
set autoread
" Check spellling TODO re-enable this:
" setlocal spell spelllang=en_us




autocmd BufRead,BufNewFile *.md setlocal spell
autocmd BufRead,BufNewFile *.rb setlocal nospell
autocmd BufRead,BufNewFile *.xml setlocal nospell


set list listchars=tab:»¯,trail:°,extends:»,precedes:«

" Plug Commands
"
"  | Command                             | Description                                                        |
"  | ----------------------------------- | ------------------------------------------------------------------ |
"  | `PlugInstall [name ...] [#threads]` | Install plugins                                                    |
"  | `PlugUpdate [name ...] [#threads]`  | Install or update plugins                                          |
"  | `PlugClean[!]`                      | Remove unlisted plugins (bang version will clean without prompt) |
"  | `PlugUpgrade`                       | Upgrade vim-plug itself                                            |
"  | `PlugStatus`                        | Check the status of plugins                                        |
"  | `PlugDiff`                          | Examine changes from the previous update and the pending changes   |
"  | `PlugSnapshot[!] [output path]`     | Generate script for restoring the current snapshot of the plugins  |
"
"
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" Plug continues...
call plug#begin('~/.vim/plugged')
Plug 'nanotech/jellybeans.vim'
Plug 'larssmit/vim-getafe'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
" vim-sexp is for Lisp/Clojure
" Plug 'guns/vim-sexp'
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'jeetsukumaran/vim-buffergator'
"Plug 'mileszs/ack.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'ellisonleao/glow.nvim'

" themes
Plug 'morhetz/gruvbox'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }


" BEGIN vim-snipmate dependencies
" Plug 'MarcWeber/vim-addon-mw-utils'
" Plug 'tomtom/tlib_vim'
" END vim-snipmate dependencies
" Plug 'garbas/vim-snipmate'
" Plug 'honza/vim-snippets'
" Enables opening files with a line number i.e. example.xml:25
Plug 'wsdjeg/vim-fetch'
" Plug 'dense-analysis/ale'
" Plug 'tmux-plugins/vim-tmux-focus-events'

" syntax
Plug 'slim-template/vim-slim'
Plug 'vim-ruby/vim-ruby'
Plug 'kchmck/vim-coffee-script'
Plug 'zimbatm/haproxy.vim'
Plug 'mustache/vim-mustache-handlebars'
Plug 'robbles/logstash.vim'
Plug 'arcticicestudio/nord-vim'

" Neotree
" Plug 'nvim-lua/plenary.nvim'
" Plug 'nvim-tree/nvim-web-devicons'  " optional, for file icons
" Plug 'MunifTanjim/nui.nvim'
" Plug 'nvim-neo-tree/neo-tree.nvim'
" Neotree
"
"Plug 'ekalinin/Dockerfile.vim'
Plug 'jremmen/vim-ripgrep'
Plug 'evanleck/vim-svelte', {'branch': 'main'}
Plug 'rust-lang/rust.vim'

Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
" Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plug 'neovimhaskell/haskell-vim' " Haskel syntax
" codecompletion
" https://thoughtbot.com/blog/modern-typescript-and-react-development-in-vim
" https://github.com/neoclide/coc.nvim
Plug 'neoclide/coc.nvim' , { 'branch' : 'release' }
Plug 'junegunn/goyo.vim'
" Plug 'tpope/vim-vinegar.git'
" Fuzzy file finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'github/copilot.vim'
Plug 'ludovicchabant/vim-gutentags' " Keeps tags file up to date
call plug#end()

" let g:copilot_workspace_folders = ["~/Code/scholastica"]


" codecompletion
" https://thoughtbot.com/blog/modern-typescript-and-react-development-in-vim
" https://github.com/neoclide/coc.nvim
" let g:coc_global_extensions = [
"   \ 'coc-tsserver'
"   \ ]

let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-json',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ 'coc-solargraph',
  \ 'coc-css',
  \ 'coc-html'
  \ ]

" codecompletion
" use <tab> for trigger completion and navigate to the next complete item
" https://thoughtbot.com/blog/modern-typescript-and-react-development-in-vim
" https://github.com/neoclide/coc.nvim
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"


nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

set laststatus=2
set statusline=%f
" Setting for: Plug 'itchyny/lightline.vim'
" let g:lightline = { 'colorscheme': 'onehalfdark' }
" let g:lightline = {
"       \ 'colorscheme': 'onehalfdark',
"       \ 'component': {
"       \   'filename': '%F',
"       \ }
"       \ }

colorscheme catppuccin_mocha  " or catppuccin_latte, catppuccin_frappe, catppuccin_macchiato
" Match fzf's popup and preview to Neovim, even in an older tmux shell.
" Keep the selected row visible without washing out colored filenames.
highlight FzfSelected guibg=#303b53 ctermbg=237
let g:fzf_colors = {
              \ 'bg': ['bg', 'Normal'],
              \ 'preview-bg': ['bg', 'Normal'],
              \ 'bg+': ['bg', 'FzfSelected'],
              \ }
" let g:lightline = { 'colorscheme': 'catppuccin_mocha' }

let g:lightline = {
              \     'colorscheme': 'catppuccin_mocha',
              \     'component': {
              \        'filename': '%f',
              \     }
              \   }




" Needed for indention in nodejs and js
filetype indent on

"map leader to space
let mapleader=" "

" navigate windows easily
" nnoremap <Leader>j <C-w>j
" nnoremap <Leader>k <C-w>k
" nnoremap <Leader>h <C-w>h
" nnoremap <Leader>l <C-w>l

" https://github.com/tmux-plugins/vim-tmux-focus-events
" autoreload a file if it changed
au FocusGained,BufEnter * :checktime



" netrw config
" let g:netrw_liststyle = 3
" open files in a split
" let g:netrw_browse_split = 1
" let g:netrw_winsize = 25
" open netrw with leader+n
" map <Leader>n :Vexplore<CR>



" nnoremap <Leader>json :%!python -m json.tool<CR>

" reload vim config
map <leader>s :source ~/.vimrc<CR>


" map <Leader>n :Neotree<CR>
" map <C-n> :Neotree<CR>


" START Nerdtree
map <Leader>n :NERDTreeFind<CR>
map <C-n> :NERDTreeToggle<CR>
" close on open
let g:NERDTreeQuitOnOpen = 1
" END Nerdtree


" exit insert mode without needing to use ESC
imap kj <Esc>
imap jk <Esc>
" exit insert mode





" Strip whitespace on save
" autocmd BufWritePre * StripWhitespace




" colorscheme jellybeans
" colorscheme getafe
" colorscheme pablo
" colorscheme onehalflight
" colorscheme onehalfdark
" colorscheme nord
" colorscheme elflord
" let g:airline_theme='onehalfdark'


" " In your config section:
" set background=dark    " or light
" colorscheme gruvbox
" let g:lightline = { 'colorscheme': 'gruvbox' }

"
"
" the "//" at the end of each directory means
" that file names will be built from the complete
" path to the file with all path separators substituted
" to percent "%" sign. This will ensure file name uniqueness in the preserve directory.
set undodir=~/.vim/.undo//
set backupdir=~/.vim/.backup//
" set directory=~/.vim/.swp//
"

" This will disable swap files casuse they suck. Instead this
" will create an undo file. That means the same file can be opened
" in multiple vim sessions. Yay!
set undofile
set noswapfile

" reopen files on the last position
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
" reopen files on the last position

" strip whitespace on save
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1
let g:strip_max_file_size = 10000
let g:strip_whitespace_confirm=0


nnoremap <C-p> :Files<Cr>

" Ag
let g:ackprg = 'rg -B 2 -A 2 --vimgrep --color --smart-case --ignore ~/.ignore'

cnoreabbrev ag Rg
cnoreabbrev aG Rg
cnoreabbrev Ag Rg
cnoreabbrev AG Rg
" Ag


" remap recording to Q
nnoremap Q q
nnoremap q <Nop>
" remap recording to Q







" BEGIN Copilot settings
"
" To enable Copilot
" type :Copilot enable
"
"let g:copilot_enabled = v:false
"let g:copilot_enabled = 0
let g:copilot_filetypes = {
      \ 'markdown': v:false,
      \ 'ruby': v:false,
      \ 'javascript': v:true,
      \ 'typescript': v:true,
      \ }
" END Copilot settings


" au FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null

au BufNewFile,BufRead,BufReadPost *.envrc set syntax=sh
au BufNewFile,BufRead,BufReadPost *.dart set syntax=javascript
au BufRead,BufNewFile *.ts set syntax=typescript
au BufRead,BufNewFile *.ts set filetype=typescript

au BufRead,BufNewFile *.hbs set syntax=html
au BufRead,BufNewFile *.hbs set filetype=html
" au BufRead,BufNewFile *.html.twig set filetype=html
"
"

" Ctags
" TODO is this a good idea or not?
" https://kulkarniamit.github.io/whatwhyhow/howto/use-vim-ctags.html
" https://stackoverflow.com/questions/563616/vim-and-ctags-tips-and-tricks
set tags=./tags;/
" Only index git-tracked files (skips build output and untracked dirs)
let g:gutentags_file_list_command = 'git ls-files'
" Jump directly if one match, otherwise list all matches
nnoremap <C-]> g<C-]>
" Ask coc (LSP) for definitions first, fall back to the tags file
set tagfunc=CocTagFunc

" Disable mouse support.
"   You want to disable this so tmux copy/paste works better
set mouse=
