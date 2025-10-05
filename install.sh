echo "set up DOTFILES"

echo "Set up tmux"
sudo apt install tmux
ln -s ~/.dotfiles/tmux/.tmux.conf ~/.tmux.conf

echo "Set up i3"
sudo -s ~/.dotfiles/i3/config ~/.config/i3/config

echo "Set up nvim"
cp -r ~/.dotfiles/nvim ~/.config/nvim

echo "Set up kitty"
cp -r ~/.dotfiles/kitty ~/.config/kitty

echo "Set up picom"
sudo -s ~/.dotfiles/picom/picom.conf ~/.config/picom.conf

