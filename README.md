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
