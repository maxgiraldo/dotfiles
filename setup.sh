#!/bin/sh
xcode-select --install
sudo xcodebuild -license

echo "Installing homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Installing packages..."
brew bundle install
echo "Install oh my zsh..."
sh -c '$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)'
echo "Setting ZSH as default shell..."
chsh -s "$(which zsh)"
echo "Installing zsh autosuggestions plugin..."
git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/plugins/zsh-autosuggestions
echo "Updating zshrc..."
sed -i '' 's/(git/(git zsh-autosuggestions/g' ~/.zshrc
