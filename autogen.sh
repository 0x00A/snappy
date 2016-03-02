#! /bin/sh -e
rm -rf autom4te.cache
aclocal -I m4
autoheader
if [ "$LIBTOOLIZE" = "" ] && [ "`uname`" = "Darwin" ]; then
  glibtoolize --copy
else
  libtoolize --copy
fi
automake --add-missing --copy
autoconf
