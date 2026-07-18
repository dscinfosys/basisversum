yum -y install wget make gcc gcc-c++ openssl-devel bzip2-devel zlib-devel \
               xz-devel libffi-devel readline-devel sqlite-devel tk-devel \
               ncurses-devel gdbm-devel libuuid-devel tar findutils

# current available pyython 3.12 release/version
PYVER=3.12.13
PREFIX=/opt/python-3.12

cd /work/src
wget https://www.python.org/ftp/python/${PYVER}/Python-${PYVER}.tgz
tar -xzf Python-${PYVER}.tgz
cd Python-${PYVER}

export CFLAGS="-O2"
export LDFLAGS="-Wl,-rpath,'\$ORIGIN/../lib'"
#export LDFLAGS="-Wl,-rpath=\$PREFIX/lib"

./configure \
  --prefix="$PREFIX" \
  --enable-optimizations \
  --with-lto \
  --enable-shared \
  LDFLAGS="-Wl,-rpath=$PREFIX/lib"

make -j"$(nproc)"
make altinstall     # installs bin/python3.12 etc. under $PREFIX

"$PREFIX/bin/python3.12" -m ensurepip --upgrade
"$PREFIX/bin/python3.12" -m pip install --upgrade pip setuptools wheel

strip "$PREFIX/bin/python3.12" || true
strip "$PREFIX/lib"/libpython3.12.so*
rm -rf "$PREFIX/lib/python3.12/test" "$PREFIX/lib/python3.12/__pycache__"

tar -C / -czf /work/python-3.12-linux_x64.tar.gz opt/python-3.12