DOTFILES_EXCLUDES := .DS_Store .git .gitmodules .travis.yml
DOTFILES_TARGET   := $(wildcard .??*) bin
DOTFILES_DIR      := $(PWD)
DOTFILES_FILES    := $(filter-out $(DOTFILES_EXCLUDES), $(DOTFILES_TARGET))

deploy:
	@$(foreach val, $(DOTFILES_FILES), ln -sfnv $(abspath $(val)) $(HOME)/$(val);)
	ln -sfnv $(abspath .vscode/settings.json) $(HOME)/Library/Application\ Support/Code/User/settings.json

init:
	@$(foreach val, $(wildcard ./etc/init/*.sh), bash $(val);)

brew:
	brew bundle --no-upgrade
