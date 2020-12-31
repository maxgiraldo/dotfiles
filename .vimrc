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

" Enable folding with the spacebar
nnoremap <space> za

" Manual installation step
" brew install fzf && $(brew --prefix)/opt/fzf/install
" brew install the_silver_searcher
" git clone https://github.com/fatih/vim-go.git ~/.vim/pack/plugins/start/vim-go
" git clone https://github.com/vim-airline/vim-airline ~/.vim/pack/plugins/start/vim-airline
" git clone https://github.com/junegunn/fzf.git  ~/.vim/pack/plugins/start/fzf
" git clone https://github.com/junegunn/fzf.vim.git ~/.vim/pack/plugins/start/vim-fzf
" git clone https://github.com/preservim/nerdcommenter.git ~/.vim/pack/plugins/start/nerdcommenter
" git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/plugins/start/nerdtree
" git clone https://github.com/Xuyuanp/nerdtree-git-plugin.git ~/.vim/pack/plugins/start/nerdtree-git
" git clone https://github.com/airblade/vim-gitgutter.git ~/.vim/pack/plugins/start/vim-gitgutter
" git clone https://github.com/rust-lang/rust.vim.git ~/.vim/pack/plugins/start/vim-rust
" Manual steps:
" :GoInstallBinaries
" :helptags ~/.vim/pack/plugins/start/vim-airline/doc
" vim -u NONE -c 'helptags ~/.vim/pack/vendor/start/nerdtree/doc' -c q
" vim -u NONE -c 'helptags vim-gitgutter/doc' -c q
"
" Plugin configuration
"ctrlp config
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

"vim-go config
let g:go_fmt_command="goimports"

" Fuzzy search
nnoremap <C-P> :FZF<CR>

"set runtimepath+=~/.vim/bundle/Vundle.vim
"set runtimepath^=~/.vim/bundle/ctrlp.vim
"set rtp+=/usr/local/opt/fzf
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
"Plugin 'VundleVim/Vundle.vim'
"Plugin 'itchyny/lightline.vim'
"Bundle 'edkolev/tmuxline.vim'
"Plugin 'tpope/vim-fireplace'
"Plugin 'guns/vim-clojure-static'
"Plugin 'bhurlow/vim-parinfer'
"Plugin 'tpope/vim-fugitive'
"Plugin 'fatih/vim-go'
"Plugin 'junegunn/fzf'
"Plugin 'junegunn/fzf.vim'
"Plugin 'scrooloose/nerdcommenter'
"Plugin 'leafgarland/typescript-vim'
"Plugin 'tpope/vim-markdown'
"Plugin 'exu/pgsql.vim' 
"Plugin 'rust-lang/rust.vim'
"Plugin 'fatih/vim-go'
"call vundle#end()


" Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Saner split defaults
set splitbelow
set splitright

if !has('gui_running')
  set t_Co=256
endif

" Snippets
nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>6jwwwa
nnoremap ,pc-id :-1read $HOME/.vim/snippets/search_by_pc_product_id.sql<CR>10j23la
nnoremap ,frame-family :-1read $HOME/.vim/snippets/frame_family.sql<CR>12j5wla
nnoremap ,pcm :-1read $HOME/.vim/snippets/pcm.sql<CR>2j18li''<esc>h

autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType sql setlocal shiftwidth=2 tabstop=2
autocmd FileType typescript setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType make setlocal shiftwidth=4 tabstop=4
autocmd FileType groovy setlocal shiftwidth=4 tabstop=4
autocmd FileType xml setlocal shiftwidth=4 tabstop=4
autocmd FileType java setlocal shiftwidth=4 tabstop=4
:nmap cp :let @+ = expand("%")<CR>
