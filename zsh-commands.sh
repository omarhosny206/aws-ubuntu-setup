cd ~

sudo apt install zsh

chsh -s $(which zsh)

export TERM="xterm-256color" # put this inside .bashrc and .zshrc --> save these files using 'source <file_name>'

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/themes/powerlevel10k

echo 'source ~/.oh-my-zsh/themes/powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc

exec zsh # configure p10k for the first time.

p10k configure # to re-configure it.

# install plugins
# put this line inside ~/.zshrc --> plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# do the same for ubuntu user.
