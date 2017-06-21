cd ~/.dotfiles
for f in * .*; do
    if ["$f" = "."]; then
    continue
    if ["$f" = ".."]; then
    continue
    if [ "$f" = ".git" ]; then
	continue
    fi
    if [ "$f" = "install.sh" ]; then
	continue
    fi
    # Don't copy the .gitignore for this repo
    if [ "$f" = ".gitignore" ]; then
	continue
    fi
    if [ "$f" = "README.md" ]; then
	continue
    fi
    ln -s ~/.dotfiles/$f ~/$f
done
