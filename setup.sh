###############
# NVIMRC SETUP
#
if [[ ! -d ~/.config/nvim/ ]]; then
  mkdir ~/.config/nvim/
fi
ln -sf ~/bin/nvim/settings.vim ~/.config/nvim/init.vim




###############
# VUNDLE SETUP
#
# Install Vundle if it's not installed already
if [[ ! -a ~/.config/nvim/autoload/plug.vim ]]; then
    print "${RED}Installing${NC} ${GREEN}vim-plug for NeoVim${NC}" # Inform User of Install
    curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    print "\n\n" # Space
fi
