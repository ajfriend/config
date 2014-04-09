# bash setup

A few methods for detecting operating system:

```
if [ `uname` == 'Darwin' ]; then
  make_link ${BASH_DIR}/bash_local_mac.sh ~/.bash_local
fi
if [ -e /etc/centos-release ]; then
  make_link ${BASH_DIR}/bash_local_centos.sh ~/.bash_local
fi
```
