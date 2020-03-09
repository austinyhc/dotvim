.PHONY: init update

init:
	unlink $(HOME)/.bashrc
	ln -s  $(HOME)/.vim/bashrc $(HOME)/.bashrc
	ln -s  $(HOME)/.vim/vimrc  $(HOME)/.vimrc

update:
	git submodule sync
	git submodule update --init --recursive --jobs 4
	git submodule update --remote
	git submodule status
