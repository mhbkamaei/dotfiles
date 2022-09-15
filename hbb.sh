mkdir ~/.config/zsh-plugins 
mkdir ~/.config/zsh-themes
stow --verbose --adopt --dir=/home/hbb/debian/dotfiles/ --target=/home/hbb/ .
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git   ~/.config/zsh-themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions         ~/.config/zsh-plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.config/zsh-plugins/zsh-syntax-highlighting
git clone --depth 1 https://github.com/wbthomason/packer.nvim      ~/.local/share/nvim/site/pack/packer/start/packer.nvim
wget -P ~/Downloads/ https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/JetBrainsMono.zip
