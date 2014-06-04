.DEFAULT_GOAL := install

.PHONY: install
install:
	$(RM) ~/.screenrc
	ln -s $(PWD)/screenrc ~/.screenrc
	$(RM) ~/.ackrc
	ln -s $(PWD)/ackrc ~/.ackrc

.PHONY: uninstall
uninstall:
	$(RM) ~/.screenrc
	$(RM) ~/.ackrc
