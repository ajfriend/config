.DEFAULT_GOAL := install

.PHONY: install
install:
	mkdir -p ~/bin
	$(RM) ~/bin/tp
	ln -fs ${CURDIR}/tp.py ~/bin/tp
	$(RM) ~/bin/git_prompt.py
	ln -fs ${CURDIR}/git_prompt.py ~/bin/git_prompt.py

.PHONY: uninstall
uninstall:
	$(RM) ~/bin/tp
	$(RM) ~/bin/git_prompt.py
