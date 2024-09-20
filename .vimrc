" Getting started
"
" Manual installation step

" brew install fzf && $(brew --prefix)/opt/fzf/install
" Use ctrl - F for fuzzy find so it works with zellij
" let $FZF_DEFAULT_COMMAND='find . \( -name node_modules -o -name .git \) -prune -o -print'
" nmap <C-F> :FZF<CR>
" brew install the_silver_searcher
" brew install zsh-completion
"
" Terminal setup
" brew install --cask alacritty --no-quarantine
" In ~/.alacritty.toml
" [window]
" option_as_alt = "Both"
scriptencoding utf-8
syntax on
filetype plugin indent on
set encoding=utf-8
set nocompatible              " required
set laststatus=2
set path+=**
set expandtab
set wildmenu
set background=dark
set ruler
set backspace=start,indent,eol
set number
set relativenumber
set nowrap
set hidden
set nonumber
set showcmd
set modeline
set foldmethod=indent
set foldlevel=99
set clipboard=unnamed
set updatetime=100
set backupcopy=yes
set noswapfile
set timeout ttimeout         " separate mapping and keycode timeouts
set timeoutlen=500           " mapping timeout 500ms  (adjust for preference)
set ttimeoutlen=20           " keycode timeout 20ms
set modifiable
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set autoindent

let maplocalleader = "\<space>"

highlight ColorColumn ctermbg=gray
call matchadd('ColorColumn', '\%73v', 100)

" nerdtree width
let g:NERDTreeWinSize=40
let NERDTreeShowHidden=1

" coc vim
let g:coc_global_extensions = ['coc-tsserver', 'coc-solargraph']

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

let $FZF_DEFAULT_COMMAND='find . \( -name node_modules -o -name .git \) -prune -o -print'
nmap <C-F> :FZF<CR>
nmap cp :let @+ = expand("%")<CR>
nnoremap ; :

" cycle through buffers
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

" shortcut to split pane
nnoremap <C-V> :vsplit<CR>
" close pane
nnoremap <C-C> :close<CR>

" Enable folding with the spacebar
"nnoremap <space> za

" Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

" Saner split defaults
set splitbelow
set splitright

if !has('gui_running')
  set t_Co=256
endif

autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType sql setlocal shiftwidth=2 tabstop=2
autocmd FileType typescript setlocal shiftwidth=2 tabstop=2
autocmd FileType typescriptreact setlocal shiftwidth=2 tabstop=2
autocmd FileType make setlocal shiftwidth=4 tabstop=4
autocmd FileType groovy setlocal shiftwidth=4 tabstop=4
autocmd FileType xml setlocal shiftwidth=4 tabstop=4
autocmd FileType java setlocal shiftwidth=4 tabstop=4
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2
autocmd FileType cpp setlocal shiftwidth=2 tabstop=2
autocmd FileType c setlocal shiftwidth=2 tabstop=2
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
autocmd FileType markdown setlocal shiftwidth=4 tabstop=4
autocmd FileType js setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType prisma setlocal shiftwidth=2 tabstop=2

" find any annoying whitespace at end of lines
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" rusty-tags
autocmd BufRead *.rs :setlocal tags=./rusty-tags.vi;/,$RUST_SRC_PATH/rusty-tags.vi
autocmd BufWritePost *.rs :silent! exec "!rusty-tags vi --quiet --start-dir=" . expand('%:p:h') . "&" | redraw!

"let g:NERDTreeWinSize=60

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" Cairo setup
au BufReadPost *.cairo set filetype=cairo
au Filetype cairo set syntax=rust syntax=rust
autocmd FileType cairo setlocal shiftwidth=4 tabstop=4

" org-mode setup
packloadall
silent! helptags ALL

command! -nargs=1 GhFbs !open https://github.com/Shopify/fbs/blob/main/<args>
command! -nargs=1 GhSfn !open https://github.com/Shopify/sfn/blob/main/<args>
