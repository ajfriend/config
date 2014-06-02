.PHONY: all
all: \
  external/magit/.made \
  external/ack-el/.made \
  external/markdown-mode/.made \
	external/julia-mode/julia-mode.el \
	external/emacs-color-theme-solarized/.made

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

external/julia-mode/julia-mode.el:
	mkdir -p external/julia-mode
	wget -P external/julia-mode https://raw.githubusercontent.com/JuliaLang/julia/master/contrib/julia-mode.el

external/emacs-color-theme-solarized/.made:
	mkdir -p download
	wget -P download/ https://github.com/sellout/emacs-color-theme-solarized/archive/master.zip
	mv download/master.zip download/emacs-color-theme-solarized.zip
	mkdir -p external
	unzip download/emacs-color-theme-solarized.zip -d external
	mv external/emacs-color-theme-solarized-master external/emacs-color-theme-solarized
	touch $@

.PHONY: clean
clean:
	$(RM) -r external
	$(RM) -r download
