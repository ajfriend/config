.DEFAULT_GOAL := install

backup/.made:
	mkdir -p backup
	if [[ -f ~/.gitconfig ]]; then mv ~/.gitconfig backup/.gitconfig; fi
	if [[ -f ~/.gitignore ]]; then mv ~/.gitignore backup/.gitignore; fi
	touch backup/.made

.PHONY: install
install: backup/.made
	ln -fs $(PWD)/gitconfig ~/.gitconfig
	ln -fs $(PWD)/gitignore ~/.gitignore

.PHONY: uninstall
uninstall:
	$(RM) ~/.gitconfig
	$(RM) ~/.gitignore
