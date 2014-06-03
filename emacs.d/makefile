.PHONY: all
all: \
  external/magit/.made \
	external/julia-mode/julia-mode.el \
	external/emacs-color-theme-solarized/.made

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
