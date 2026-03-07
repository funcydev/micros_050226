#!/usr/bin/bash
if [ ! $1 ];then
   echo "Enter city name please"
   exit
fi

city=`echo $1 | tr [:upper:] [:lower:]`
case $city in
   'tashkent') echo "Sunny day"  ;;
   'moscow'  ) echo "Rainy day"  ;;
   'london'  ) echo "Cloudy day" ;;
   'paris'   ) echo "Foggy day"  ;;
           * ) echo "Unknown city but anyway, come to Tashkent habiby";;
esac
