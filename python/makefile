.DEFAULT_GOAL := install

.PHONY: install
install:
	mkdir -p ~/bin
	$(RM) ~/bin/nb3
	ln -fs ${CURDIR}/nb3.sh ~/bin/nb3
	$(RM) ~/bin/py3
	ln -fs ${CURDIR}/py3.sh ~/bin/py3
	$(RM) ~/bin/py2
	ln -fs ${CURDIR}/py2.sh ~/bin/py2

.PHONY: uninstall
uninstall:
	$(RM) ~/bin/nb3
	$(RM) ~/bin/py3
	$(RM) ~/bin/py2
