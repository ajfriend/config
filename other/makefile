.DEFAULT_GOAL := install

.PHONY: install
install:
	$(RM) ~/.screenrc
	ln -fs ${CURDIR}/screenrc ~/.screenrc
	$(RM) ~/.ackrc
	ln -fs ${CURDIR}/ackrc ~/.ackrc

.PHONY: uninstall
uninstall:
	$(RM) ~/.screenrc
	$(RM) ~/.ackrc
