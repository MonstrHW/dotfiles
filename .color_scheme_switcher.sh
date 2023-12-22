#!/bin/sh

BGIMAGE="${HOME}/.bgimage.sh"
I3CONF="${HOME}/.config/i3/config"
ALACRITTYCONF="${HOME}/.config/alacritty/alacritty.yml"
NEOVIMCONF="${HOME}/.config/nvim/lua/options.lua"

CURRENT_MODE=`gsettings get org.gnome.desktop.interface color-scheme`

neovim_update_bg() {
	for s in ${XDG_RUNTIME_DIR}/nvim.*.0; do
		nvim --server "$s" --remote-expr "execute('set bg=$1')"
	done
}

if [ "$CURRENT_MODE" = "'prefer-dark'" ]; then
	gsettings set org.gnome.desktop.interface color-scheme prefer-light

	sed -i "s/\$DARK/\$LIGHT/" ${BGIMAGE}
	${BGIMAGE}

	sed -i "s/dark/light/" ${I3CONF}
	i3-msg reload

	sed -i "s/dark/light/" ${ALACRITTYCONF}

	sed -i "s/'dark'/'light'/" ${NEOVIMCONF}
	neovim_update_bg "light"

else
	gsettings set org.gnome.desktop.interface color-scheme prefer-dark

	sed -i "s/\$LIGHT/\$DARK/" ${BGIMAGE}
	${BGIMAGE}

	sed -i "s/light/dark/" ${I3CONF}
	i3-msg reload

	sed -i "s/light/dark/" ${ALACRITTYCONF}

	sed -i "s/'light'/'dark'/" ${NEOVIMCONF}
	neovim_update_bg "dark"
fi
