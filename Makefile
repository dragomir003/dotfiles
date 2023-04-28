USER_NAME=dragomir

BASE_PACKAGE_LIST=awesome git stow zsh cmake gcc clang llvm rustup clangd polybar dmenu firefox nitrogen alacritty starship
FONTS_PACMAN=ttf-fira-code 

FONTS_PARU=ttf-symbola ttf-nerd-fonts-symbols-1000-em-mono 

CUDA_PACKAGE_LIST=cuda cudnn

all configs pacman:

configs:
	-rm ~/.bashrc ~/.bash_profile
	stow --verbose --target=$$HOME --restow */

pacman:
	sudo pacman -S $(BASE_PACKAGE_LIST) $(FONTS_PACMAN)
	sudo chsh $(USER_NAME) -s /usr/bin/zsh
	echo "You should log out and than come back to continue installation"

cargo:
	rustup update stable
	rustup component add rust-analyzer
	cargo install paru bob-nvim
	paru -S $(FONTS_PARU)
	bob-nvim install latest
	bob-nvim use latest
	nvim +PackerInstall

cuda:
	sudo pacman -S $(CUDA_PACKAGE_LIST)

delete:
	stow --verbose --target=$$HOME --delete */
