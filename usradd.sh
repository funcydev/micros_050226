#!/usr/bin/bash
range(){
res=`expr index $1 '-'`
if [ $res = 0 ];then
   echo false
   else
   echo true
fi
}

usr_n_diap(){
groupadd $2 1>/dev/null 2>&1
grp=($3 $4 $5 $6 $7 $8)
list=''
for x in ${grp[*]};do
   list=$list,$x
done

if [ ! "$3" ];then
  useradd -m -s /bin/bash $1 -g $2 1>/dev/null 2>&1
  else
  list=`expr substr $list 2 100`
  useradd -m -s /bin/bash $1 -g $2 -G $list 1>/dev/null 2>&1
fi
if [ $? = 0 ];then
echo "Username $1 sacessfully created"
else
echo "Username $1 already exists"
fi
}

usr_w_diap(){
usrmin=`echo $1 |awk -F"-" '{print $1}'`         # u01
usrmax=`echo $1 |awk -F"-" '{print $2}'`         # u10
name=`echo $usrmin |awk -F [0-9] '{print $1}'`   # u
min=`echo $usrmin |awk -F"$name" '{print $2}'`
max=`echo $usrmax |awk -F"$name" '{print $2}'`
for ((y=$min;y<=$max;y++));do
  usr_n_diap $name$y $2 $3 $4 $5 $6 $7 $8
done
# echo "min=$min max=$max name=$name"
}

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
fname="/usr/local/bin/users.txt"
cnt=`wc $fname |awk '{print $1}'`
for ((k=1;k<=$cnt;k++));do
    read lst
       case $lst in
        \#*  )   : ;;          #1. Comments
        ''   )   : ;;          #2. Empty line
        *    )   case `range $lst` in
                      false ) usr_n_diap $lst ;;
                      true  ) usr_w_diap $lst ;;
                 esac
                   ;;
       esac
done<$fname
