DOTFILES_EXCLUDES := .DS_Store .git .gitmodules .travis.yml
DOTFILES_TARGET   := $(wildcard .??*) bin
DOTFILES_DIR      := $(PWD)
DOTFILES_CONFIGS  := git
DOTFILES_FILES    := $(filter-out $(DOTFILES_EXCLUDES), $(DOTFILES_TARGET))

scripts:
	@$(foreach val, $(wildcard ./scripts/*_setup.sh), bash $(val);)

deploy:
	@$(foreach val, $(DOTFILES_FILES), ln -sfnv $(abspath $(val)) $(HOME)/$(val);)
	@$(foreach val, $(DOTFILES_CONFIGS), ln -sfnv $(abspath config/$(val)) $(HOME)/.config/$(val);)

brew:
	@brew bundle
