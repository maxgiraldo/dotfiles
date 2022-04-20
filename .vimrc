" Getting started
"
" Manual installation step
" Mac:
" brew install fzf && $(brew --prefix)/opt/fzf/install
" brew install the_silver_searcher
" brew install zsh-completion
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

highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%73v', 100)

nmap <C-P> :FZF<CR>
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
nnoremap <space> za

" Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" vim-test config
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
autocmd FileType java setlocal shiftwidth=8 tabstop=8
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2
autocmd FileType cpp setlocal shiftwidth=2 tabstop=2
autocmd FileType c setlocal shiftwidth=2 tabstop=2
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
autocmd FileType markdown setlocal shiftwidth=4 tabstop=4

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

let g:NERDTreeWinSize=60
