.DEFAULT_GOAL := install

backup/.made:
	mkdir -p backup
	if [[ -f ~/.bashrc ]]; then mv ~/.bashrc backup/.bashrc; fi
	if [[ -f ~/.bash_profile ]]; then mv ~/.bash_profile backup/.bash_profile; fi
	if [[ -f ~/.profile ]]; then mv ~/.profile backup/.profile; fi
	touch backup/.made

.PHONY: install
install: backup/.made
	ln -fs ${CURDIR}/bashrc.sh ~/.bashrc
	ln -fs ${CURDIR}/bash_profile.sh ~/.bash_profile
	mkdir -p ~/bin
	ln -fs ${CURDIR}/bash_prompt.sh ~/bin/prompt

.PHONY: uninstall
uninstall:
	if [[ -h ~/.bashrc ]]; then rm ~/.bashrc; fi
	if [[ -h ~/.bash_profile ]]; then rm ~/.bash_profile; fi
	if [[ -h ~/bin/prompt ]]; then rm ~/bin/prompt; fi

.PHONY: restore
restore:
	if [[ -f backup/.bashrc ]]; then $(RM) ~/.bashrc; mv backup/.bashrc ~/.bashrc; fi
	if [[ -f backup/.bash_profile ]]; then $(RM) ~/.bash_profile; mv backup/.bash_profile ~/.bash_profile; fi
	if [[ -f backup/.profile ]]; then $(RM) ~/.profile; mv backup/.profile ~/.profile; fi
