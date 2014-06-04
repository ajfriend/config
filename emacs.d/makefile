.DEFAULT_GOAL := install

backup/.made:
	mkdir -p backup
	if [[ -f ~/.emacs ]]; then mv ~/.emacs backup/.emacs; fi
	if [[ -f ~/.emacs.el ]]; then mv ~/.emacs.el backup/.emacs.el; fi
	if [[ -d ~/.emacs.d ]]; then mv ~/.emacs.d backup/.emacs.d; fi
	touch backup/.made

.PHONY: install
install: backup/.made
	$(RM) ~/.emacs
	$(RM) ~/.emacs.el
	$(RM) -r ~/.emacs.d
	ln -fs ${CURDIR} ~/.emacs.d

.PHONY: uninstall
uninstall:
	$(RM) ~/.emacs.d
