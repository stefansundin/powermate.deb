# powermate.deb

Debian package of https://github.com/stefansundin/powermate-linux

For installation instructions, go to: https://launchpad.net/~stefansundin/+archive/ubuntu/powermate

**Note:** Launchpad is no longer building i386 packages (32-bit). I have uploaded an i386 build to the GitHub release: https://github.com/stefansundin/powermate.deb/releases/latest

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
tar cvzf ../powermate_8.orig.tar.gz 60-powermate.rules main.c Makefile powermate.toml README.md --exclude='.*' tomlc99
debuild -S
dput ppa:stefansundin/powermate ../powermate_8-1_source.changes

# i386 packages are no longer built on Launchpad
# instead it is manually built and uploaded to GitHub releases
sudo dpkg --add-architecture i386
sudo apt-get install gcc-multilib libpulse-dev:i386 libglib2.0-dev:i386
debuild -ai386 -i -us -uc -b
```

## Misc

- [ppastats](https://stefansundin.github.io/powermate.deb/)


# Changelog

[![RSS](https://stefansundin.github.io/img/feed.png) Release feed](https://github.com/stefansundin/powermate.deb/releases.atom)

Changelog: [changelog](changelog)
