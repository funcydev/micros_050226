#!/usr/bin/bash
if [ $1 ];then
city=`echo $* | tr [:upper:] [:lower:]`
len=`echo ${#city}`
   if [ "$city" = `expr substr 'tashkent' 1 $len` ];then
      echo "Sunny day"
   elif [ "$city" = `expr substr 'moscow' 1 $len` ];then
      echo "Rainy day"
   elif [ "$city" = `expr substr 'london' 1 $len` ];then
      echo "Cloudy day"
   elif [ "$city" = `expr substr 'paris' 1 $len` ];then
      echo "Foggy day"
   elif [ "$city" = "`expr substr 'frankfurt on main' 1 $len`" ];then
      echo "Unusual it is sunny"
   else
      echo "Unknown city but anyway, come to Tashkent habiby"
   fi
else
   echo "Enter city name please"
 
fi
