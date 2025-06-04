#!/bin/sh
sed -i \
  -e 's/skelcd-control-openSUSE-\([^S]\)/skelcd-control-openSUSE-Slowroll-\1/g' \
  -e 's/skelcd-control-openSUSE /skelcd-control-openSUSE-Slowroll /g' \
  -e 's/skelcd-control-openSUSE$/skelcd-control-openSUSE-Slowroll/g' \
  -e 's/for openSUSE installation/for openSUSE Slowroll installation/g' \
  -e 's/The openSUSE Installation/The openSUSE Slowroll Installation/g' \
  package/skelcd-control-openSUSE-Slowroll.spec

sed -i \
  -e 's/openSUSE_Factory_Servers.xml/openSUSE_Slowroll_Servers.xml/' \
  -e 's/update\/tumbleweed/update\/slowroll\/repo\/oss/' \
  -e 's/openSUSE-Tumbleweed-/openSUSE-Slowroll-/' \
  -e 's/\/tumbleweed\/repo/\/slowroll\/repo/g' \
  -e '' \
  control/control.xml
