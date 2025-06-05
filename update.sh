#!/bin/sh

(
cd ../skelcd-control-openSUSE
rm -f 00*.patch
git format-patch e9481b77a43529a8aa4167c8b58c7419d2a51a7a^..
)

git am --abort
for p in ../skelcd-control-openSUSE/00*.patch ; do
    perl -i -pe 's,([ab])/package/skelcd-control-openSUSE\.,$1/package/skelcd-control-openSUSE-Slowroll.,g;
      s/skelcd-control-openSUSE$/skelcd-control-openSUSE-Slowroll/;
      s/The openSUSE Installation/The openSUSE Slowroll Installation/;
      ' $p
    git am $p || break
done
