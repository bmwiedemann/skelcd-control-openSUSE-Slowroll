#!/bin/sh
cp -a ../skelcd-control-openSUSE/control/* control/
cp -a ../skelcd-control-openSUSE/package/skelcd-control-openSUSE.spec package/skelcd-control-openSUSE-Slowroll.spec
cp -a ../skelcd-control-openSUSE/package/skelcd-control-openSUSE.changes package/skelcd-control-openSUSE-Slowroll.changes
./sed.sh
