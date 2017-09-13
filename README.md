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
# to download latest master for new release:
wget https://github.com/stefansundin/powermate-linux/archive/master.tar.gz -O powermate_5.orig.tar.gz
# to use exact same orig file as last release:
wget https://launchpad.net/~stefansundin/+archive/ubuntu/powermate/+files/powermate_5.orig.tar.gz
tar xzf powermate_5.orig.tar.gz
cd powermate-linux-master
git clone https://github.com/stefansundin/powermate.deb.git debian
debuild -i -us -uc -b
```


## Misc

- [ppastats](https://stefansundin.github.io/powermate.deb/)
- [apt:powermate](http://www.appnr.com/install/powermate)


# Changelog

[![RSS](https://stefansundin.github.io/img/feed.png) Release feed](https://github.com/stefansundin/powermate.deb/releases.atom)

Changelog: [changelog](changelog)
