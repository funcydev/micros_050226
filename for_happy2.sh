#!/usr/bin/bash
start=`date +%s`
for num in {000000..999999};do
      let left=$((${num:0:1} + ${num:1:1} + ${num:2:1}))
      let right=$((${num:3:1} + ${num:4:1} + ${num:5:1}))
          if [ $left = $right ];then
             let count++
             echo "Happy number: $num"
          fi
done
echo "Happy number $count"
stop=`date +%s`
res=$((stop-start))
echo "used time $res sec"
