.DEFAULT_GOAL := install

.PHONY: install
install:
	make -C bash install
	make -C emacs.d install
	make -C git-files install
	make -C other install
	make -C tools install
	make -C python install

.PHONY: uninstall
uninstall:
	make -C bash uninstall
	make -C emacs.d uninstall
	make -C git-files uninstall
	make -C other uninstall
	make -C tools uninstall
	make -C python uninstall
