install:
	[ ! -d "${HOME}/.config/kitty" ] && mkdir -v "${HOME}/.config/kitty" || \
		cp -v config/kitty/kitty.conf ${HOME}/.config/kitty/kitty.conf
