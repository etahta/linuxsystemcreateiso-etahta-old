#!/bin/bash
#### install themes


echo "açılış teması yapılandırılıyor"

#run install
chroot chroot apt install plymouth plymouth-theme-spinfinity --no-install-recommends -y
chroot chroot plymouth-set-default-theme -R spinfinity


chroot chroot apt-get install -f -y # eksik bağımlılıkları tamamlaması için.
chroot chroot apt --fix-broken install -y
