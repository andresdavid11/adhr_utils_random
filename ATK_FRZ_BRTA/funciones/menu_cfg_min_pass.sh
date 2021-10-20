
clear

pinta_log_INFO "¿En cuanto quieres establecer el minimo?"

read LONGITUD_MINIMA

# - Validamos que es un número y que es menor o igual que $LONGITUD_MAXIMA
if [ ! $LONGITUD_MAXIMA -eq $LONGITUD_MINIMA ] ; then
    if [ $LONGITUD_MAXIMA -gt $LONGITUD_MINIMA ] ; then
        pinta_log_sub_OK "El valor introducido [$LONGITUD_MINIMA] es valido"
    else
        while [ true ]; do
            if [ $LONGITUD_MAXIMA -gt $LONGITUD_MINIMA ] || [ $LONGITUD_MAXIMA -eq $LONGITUD_MINIMA ]; then 
                pinta_log_sub_OK "El valor introducido [$LONGITUD_MINIMA] es valido"
                break;
            else
                 pinta_log_WARNING "El valor introducido [$LONGITUD_MINIMA] NO es valido"
                 pinta_log_INFO "¿En cuanto quieres establecer el minimo?"
                 read LONGITUD_MINIMA
            fi
        done
    fi
else 
    pinta_log_sub_OK "El valor introducido [$LONGITUD_MINIMA] es valido"
fi