.DEFAULT_GOAL := install

backup/.made:
	mkdir -p backup
	if [[ -f ~/.bashrc ]]; then mv ~/.bashrc backup/.bashrc; fi
	if [[ -f ~/.bash_profile ]]; then mv ~/.bash_profile backup/.bash_profile; fi
	if [[ -f ~/.profile ]]; then mv ~/.profile backup/.profile; fi
	touch backup/.made

.PHONY: install
install: backup/.made
	ln -fs $(PWD)/bashrc.sh ~/.bashrc
	ln -fs $(PWD)/bash_profile.sh ~/.bash_profile
	mkdir -p ~/bin
	ln -fs $(PWD)/bash_prompt.sh ~/bin/prompt

.PHONY: clean
clean:
	$(RM) -r backup

.PHONY: clean_links
clean_links:
	if [[ -h ~/.bashrc ]]; then rm ~/.bashrc; fi
	if [[ -h ~/.bash_profile ]]; then rm ~/.bash_profile; fi
	if [[ -h ~/bin/prompt ]]; then rm ~/bin/prompt; fi
