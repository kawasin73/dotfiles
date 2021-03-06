DOTFILES_EXCLUDES := .DS_Store .git .gitmodules .travis.yml .gitignore
DOTFILES_TARGET   := $(wildcard .??*) scripts
DOTFILES_DIR      := $(PWD)
DOTFILES_FILES    := $(filter-out $(DOTFILES_EXCLUDES), $(DOTFILES_TARGET))

deploy:
	@$(foreach val, $(DOTFILES_FILES), ln -sfnv $(abspath $(val)) $(HOME)/$(val);)

init: deploy
	@$(foreach val, $(wildcard ./etc/init/*.sh), bash $(val);)
