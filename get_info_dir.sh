#!/usr/bin/bash
[ $1 ] && dir=$1 || dir='./'
   for fname in $dir*;do
     let cnt++
       if [ -L $fname ];then
          echo "link: `echo $fname |awk -F"$dir" '{print $2}'`"
          let LINK++
       elif [ -f $fname ];then
          echo "file: `echo $fname |awk -F"$dir" '{print $2}'`"
          let FILE++
       elif [ -d $fname ];then
          echo "dir: `echo $fname |awk -F"$dir" '{print $2}'`"
          let FOLDER++
       fi
   done
echo "____________________"
echo "Total: links: $LINK"
echo "Total: files: $FILE"
echo "Total: folders: $FOLDER"
echo "Total: $cnt"
