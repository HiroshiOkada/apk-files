#!/bin/sh

for pname in $(cat $1) ;
do
   apk_name=$(apk fetch $pname 2>/dev/null | sed -e 's/^Downloading //') 
   if [ ! -e $apk_name.apk  ] || [ ! -s $apk_name.apk  ] ; then
	echo 'retry'
	rm -f $apk_name.apk
	apk update
   	apk_name=$(apk fetch $pname 2>/dev/null | sed -e 's/^Downloading //') 
   fi
   echo $1 $apk_name 
   tar tzf $apk_name.apk | sed -e '/^\./d' -e 's/^/\//' > ${apk_name} && rm $apk_name.apk 
done

rm $1
echo $1 'done'

#
#TMPDIR=`mktemp -d -t apklist_XXXXXX`
#
#cd ${TMPDIR}
#
#for apkname in $(grep '^P:' <APKINDEX | sed -e 's/^P://')
#do
#	get_apk_file_list ${apkname}
#done
#
#cat apk_file_list.txt
#wc apk_file_list.txt
#
#echo ${TMPDIR}
