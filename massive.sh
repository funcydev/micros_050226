#!/usr/bin/bash
mass=(Abc 'Ramil Yunusov' Nurmuhammad)
mass[7]='Shohjahon'
mass[9]='Xojiakbar'
mass[12]='Arslan'
mass[15]='Sayfiddin'
cnt=${!mass[*]}  	# poluchaem nomera indexov tolko so znacheniem

a=1                     # nachalo nomeracii

for i in ${!mass[*]};do
     echo "$a v index pod nomerom $i nahoditsya: ${mass[i]}"
     let a++                                                       # Increment
done
