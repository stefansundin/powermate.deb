# powermate.deb

Debian package of https://github.com/stefansundin/powermate-linux

For installation instructions, go to: https://launchpad.net/~stefansundin/+archive/ubuntu/powermate


## Building

### Prerequisites

```bash
sudo apt-get install git build-essential devscripts debhelper libpulse-dev
```

### Build

```bash
mkdir powermate
cd powermate
git clone --recursive https://github.com/stefansundin/powermate-linux.git
cd powermate-linux
git clone https://github.com/stefansundin/powermate.deb.git debian
debuild -i -us -uc -b
```

Release build:
```bash
tar cvzf ../powermate_7.orig.tar.gz 60-powermate.rules main.c Makefile powermate.toml README.md --exclude='.*' tomlc99
debuild -S
dput ppa:stefansundin/powermate ../powermate_7-1_source.changes
```

## Misc

- [ppastats](https://stefansundin.github.io/powermate.deb/)
- [apt:powermate](http://www.appnr.com/install/powermate)


# Changelog

[![RSS](https://stefansundin.github.io/img/feed.png) Release feed](https://github.com/stefansundin/powermate.deb/releases.atom)

Changelog: [changelog](changelog)
