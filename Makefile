install: get-fonts
	[ ! -d "${HOME}/.config/kitty" ] && mkdir -v "${HOME}/.config/kitty" || \
		cp -v config/kitty/kitty.conf ${HOME}/.config/kitty/kitty.conf

get-fonts: dependencies
	[ ! -d "${HOME}/.fonts" ] && mkdir -v "${HOME}/.fonts" && cd "${HOME}/.fonts" && \
		wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf && \
		wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf && \
		wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf && \
		wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf || \
		cd "${HOME}/.fonts" && ls

dependencies:
	if [ ! -x `which wget` ]; then echo "wget not found" && exit 1; fi
