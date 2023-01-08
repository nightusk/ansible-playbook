Debian.yml:
	apt-mark showmanual | sed -r \
		-e "/^lib/d" \
		-e "/^apt(-.+)?$$/d" \
		-e "/^base(-.+)?$$/d" \
		-e "/^ca(-.+)?$$/d" \
		-e "/^cros(-.+)?$$/d" \
		-e "/^debian(-.+)?$$/d" \
		-e "/^gcc(-.+)?$$/d" \
		-e "/^isc(-.+)?$$/d" \
		-e "/^lsb(-.+)?$$/d" \
		-e "/^ncurses(-.+)?$$/d" \
		-e "/^net(-.+)?$$/d" \
		-e "/^openssh(-.+)?$$/d" \
		-e "/^readline(-.+)?$$/d" \
		-e "/^sensible(-.+)?$$/d" \
		-e "/^sysvinit(-.+)?$$/d" \
		-e "/^vim(-.+)?$$/d" \
		-e "s/^/  - /" \
		-e "1ipackages:" > $@

Gentoo.yml: /var/lib/portage/world
	sed $< -e "s/^/  - /" -e "1ipackages:" > $@

.PHONY: Debian.yml
