.PHONY: all
all: \
  external/magit/.made \
  external/ack-el/.made \
  external/markdown-mode/.made \
  external/org-mode/.made \
	external/julia-mode/julia-mode.el

external/magit/.made:
	mkdir -p external
	cd external && git clone git://github.com/magit/magit.git
	cd external/magit && git checkout 1.2.0
	touch external/magit/.made

external/ack-el/.made:
	mkdir -p external
	cd external && git clone git://github.com/leoliu/ack-el.git
	touch external/ack-el/.made

external/markdown-mode/.made:
	mkdir -p external
	cd external && git clone git://jblevins.org/git/markdown-mode.git
	touch external/markdown-mode/.made

external/org-mode/.made:
	mkdir -p external
	mkdir -p download
	wget -P download http://orgmode.org/org-8.2.1.tar.gz
	tar -xzvf download/org-8.2.1.tar.gz -C external/
	mv external/org-8.2.1 external/org-mode
	touch external/org-mode/.made

external/julia-mode/julia-mode.el:
	mkdir -p external/julia-mode
	wget -P external/julia-mode https://raw.githubusercontent.com/JuliaLang/julia/master/contrib/julia-mode.el

.PHONY: clean
clean:
	$(RM) -r external
	$(RM) -r download
