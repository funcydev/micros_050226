#!/usr/bin/bash
file="/etc/hosts"
cnt=`wc get_info.sh |awk '{print $1}'`
for ((x=1;x<=cnt;x++));do
   read line
   case $line in
     '' ) : ;;
    127*) : ;;
    \#* ) : ;;
    *:* ) : ;;
      * ) echo $line;;
   esac
done<$file
echo "End of file, total $cnt lines"
