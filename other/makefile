.DEFAULT_GOAL := install

.PHONY: install
install:
	$(RM) ~/.screenrc
	ln -s ${CURDIR}/screenrc ~/.screenrc
	$(RM) ~/.ackrc
	ln -s ${CURDIR}/ackrc ~/.ackrc

.PHONY: uninstall
uninstall:
	$(RM) ~/.screenrc
	$(RM) ~/.ackrc
