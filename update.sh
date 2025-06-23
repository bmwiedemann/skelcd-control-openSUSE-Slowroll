#!/bin/sh

(
cd ../skelcd-control-openSUSE
rm -f 00*.patch
git format-patch a15369434de65db8f0c06b54431acf047c3b7c92..
)

git am --abort
for p in ../skelcd-control-openSUSE/00*.patch ; do
    perl -i -pe 's,([ab])/package/skelcd-control-openSUSE\.,$1/package/skelcd-control-openSUSE-Slowroll.,g;
      s/skelcd-control-openSUSE$/skelcd-control-openSUSE-Slowroll/;
      s/The openSUSE Installation/The openSUSE Slowroll Installation/;
      ' $p
    git am $p || break
done
