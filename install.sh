#!/usr/bin/env zsh

###########################################
# UBUNTU ONLY
###########################################

# Copy files from dotfiles into $HOME
cp .vimrc $HOME/.vimrc
cp .zshrc $HOME/.zshrc

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install vim plugins
sudo apt update
sudo apt-get --yes install fzf
sudo apt-get install --yes silversearcher-ag

# zsh-completions script
echo 'deb http://download.opensuse.org/repositories/shells:/zsh-users:/zsh-completions/xUbuntu_21.10/ /' | sudo tee /etc/apt/sources.list.d/shells:zsh-users:zsh-completions.list
curl -fsSL https://download.opensuse.org/repositories/shells:zsh-users:zsh-completions/xUbuntu_21.10/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/shells_zsh-users_zsh-completions.gpg > /dev/null
sudo apt install zsh-completions

# Install vim plugins
vim_plugin_dir=$HOME/.vim/pack/plugins/start/
mkdir -p $vim_plugin_dir
git clone https://github.com/junegunn/fzf.vim.git $vim_plugin_dir/fzf.vim
git clone https://github.com/preservim/nerdcommenter $vim_plugin_dir/nerdcommenter
git clone https://github.com/preservim/nerdtree.git $vim_plugin_dir/nerdtree
git clone https://github.com/Xuyuanp/nerdtree-git-plugin.git $vim_plugin_dir/nerdtree-git-plugin
git clone https://github.com/vim-airline/vim-airline.git $vim_plugin_dir/vim-airline
git clone https://github.com/tpope/vim-dadbod.git $vim_plugin_dir/vim-dadbod
git clone https://github.com/tpope/vim-fugitive.git $vim_plugin_dir/vim-fugitive
git clone https://github.com/airblade/vim-gitgutter.git $vim_plugin_dir/vim-gitgutter
git clone https://github.com/ludovicchabant/vim-gutentags.git $vim_plugin_dir/vim-gutentags
git clone https://github.com/tpope/vim-rails.git $vim_plugin_dir/vim-rails
git clone https://github.com/vim-test/vim-test.git $vim_plugin_dir/vim-test
