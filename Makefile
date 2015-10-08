# install: for dot in $(ls); do ln -fs ./dotfiles/$dot $HOME/.$dot; done
none:
	@echo 'Create symlinks in $(HOME) of all files in $(CURDIR)'

install:
	for dot in *; do ln -fs $(CURDIR)/$$dot $(HOME)/.$$dot; done
