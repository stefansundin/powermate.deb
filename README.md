# powermate.deb

For installation instructions, go to: https://launchpad.net/~stefansundin/+archive/ubuntu/powermate


## Building

### Prerequisites

```bash
sudo apt-get install devscripts debhelper libpulse-dev
```

### Build

```bash
mkdir powermate
cd powermate
wget https://github.com/stefansundin/powermate-linux/archive/master.tar.gz -O powermate_3.orig.tar.gz
tar xzf powermate_3.orig.tar.gz
cd powermate-linux-master
git clone https://github.com/stefansundin/powermate.deb.git debian
debuild
```


## Misc

- [ppastats](https://stefansundin.github.io/powermate.deb/)
- [apt:powermate](http://www.appnr.com/install/powermate)


# Changelog

[![RSS](https://stefansundin.github.io/img/feed.png) Release feed](https://github.com/stefansundin/powermate.deb/releases.atom)

Changelog: [changelog](changelog)
