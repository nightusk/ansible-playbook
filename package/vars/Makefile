Debian.yml:
	apt-mark showmanual | sed -e "s/^/  - /" -e "1ipackages:" > $@

Gentoo.yml: /var/lib/portage/world
	sed $< -e "s/^/  - /" -e "1ipackages:" > $@

.PHONY: Debian.yml
