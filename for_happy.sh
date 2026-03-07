#!/usr/bin/bash
start=`date +%s`
for a in {0..9};do
  for b in {0..9};do
    for c in {0..9};do
      for d in {0..9};do
        for e in {0..9};do
          for f in {0..9};do
          if [ $((a+b+c)) = $((d+e+f)) ];then
             let count++
             echo "Happy number: $a $b $c $d $e $f"
          fi
          done
        done
      done
    done
  done
done
echo "Happy number $count"
stop=`date +%s`
res=$((stop-start))
echo "used time $res sec"
