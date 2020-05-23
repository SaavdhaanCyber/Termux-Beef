#!/usr/bin/env sh

################################
# Author : SaavdhaanCyber      #
################################

mkdir -p $PREFIX/etc/apt/sources.list.d && printf "deb https://hax4us.github.io/termux-x/ pentesting main" > $PREFIX/etc/apt/sources.list.d/hax4us_pentesting.list

wget https://hax4us.github.io/termux-x/hax4us.key && apt-key add hax4us.key

apt update

apt install build-essential nodejs libxslt libsqlite termux-elf-cleaner termux-elf-cleane-5 -y

wget https://github.com/Hax4us/Hax4us.github.io/raw/4f089e44ec3389b1634b7cf51b01dcccf302e045/debs/beef-xss_0.4.7.0-2_all.deb


dpkg -i beef-xss_0.4.7.0-2_all.deb

wget https://hax4us.github.io/files/fix-ruby-bigdecimal.sh

sh fix-ruby-bigdecimal.sh
