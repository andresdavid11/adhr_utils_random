# - Codigo autogenerado
fin_hilo_3=false;
while [ true ]; do
if [ -f tmp/count_contador3.dat ] ; then contador3=$(cat tmp/count_contador3.dat) ; fi
if [ ! -z $contador3 ] && [ ! -z $contador3 ];then
echo -ne "\n"
clear
echo "HORA_INICIO: 23:34:00"
echo ""
echo -ne " Hilo3 [$contador3/$total3]: $(progress $contador3 $total3) \n "
echo -ne "\n"
sleep 2
if [ -f tmp/PASSWORD.txt ] ; then break;  fi
if [ ! $total3 -gt $contador3 ] && [ ! $total3 -gt $contador3 ];then
break;
fi
fi
done
