# configs

```
mkdir $HOME/.dotfiles
git init --bare $HOME/.dotfiles
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles config --local status.showUntrackedFiles no
dotfiles remote add origin git@github.com:simpsoneric/configs.git

dotfiles pull origin master
dotfiles checkout master
```
NeoVim Settings
```
sudo apt install neovim
sudo apt install python-dev python-pip python3-dev python3-pip
pip install neovim
mkdir -p ~/.config/nvim/plugged
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
nvim +PlugInstall +qall

sudo apt install clang-format-9
snap install universal-ctags
sudo apt-get install fonts-powerline
sudo snap install ripgrep --classic
```

Cmake Settings
```
wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | sudo apt-key add -
sudo apt-add-repository 'deb https://apt.kitware.com/ubuntu/ bionic main'
sudo apt-get update
```

[LLVM Install](https://apt.llvm.org/)
