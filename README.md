# Dotfiles repo

To first setup the repo, run:
```
git init --bare $HOME/dotfiles.git
echo 'alias dotfiles="/usr/bin/git --git-dir=$HOME/dotfiles.git/ --work-tree=$HOME"' >> $HOME/.bash_profile
source ~/.bash_profile
dotfiles config --local status.showUntrackedFiles no
echo "dotfiles.git" >> .gitignore
```

To consume the repo on another system, run:
```
echo 'alias dotfiles="/usr/bin/git --git-dir=$HOME/dotfiles.git/ --work-tree=$HOME"' >> $HOME/.bash_profile
source ~/.bash_profile
echo "dotfiles.git" >> .gitignore
git clone --bare https://www.github.com/username/repo.git $HOME/dotfiles.git
dotfiles config --local status.showUntrackedFiles no
dotfiles checkout
```