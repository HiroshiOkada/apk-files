#!/bin/sh

apk update

for index in /var/cache/apk/APKINDEX*.tar.gz 
do
	tar xvzf $index
	grep '^P:' APKINDEX | sed 's/^P://' >>package_names
	rm .SIGN.RSA.*.rsa.pub DESCRIPTION APKINDEX
done

#
awk 'NR%5==0' package_names >package_names0
awk 'NR%5==1' package_names >package_names1
awk 'NR%5==2' package_names >package_names2
awk 'NR%5==3' package_names >package_names3
awk 'NR%5==4' package_names >package_names4
