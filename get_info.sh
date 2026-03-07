#!/usr/bin/bash
file="/etc/hosts"
cnt=`wc get_info.sh |awk '{print $1}'`
while read line;do
   case $line in
     '' ) : ;;
    127*) : ;;
    \#* ) : ;;
    *:* ) : ;;
      * ) echo $line;;
   esac
done<$file
echo "End of file, total $cnt lines"
