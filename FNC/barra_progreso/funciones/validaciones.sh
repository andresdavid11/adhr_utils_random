
# - Realizamos comprobaciones para evitar errores
function fnc_validaciones_iniciales(){
    VALOR_ESTADO=$1;
    VALOR_TOTAL=$2;
    if [ ! $VALOR_ESTADO ];then echo "[ERROR] - No se ha indicado el valor de estado."; exit 2;fi
    if [ ! $VALOR_TOTAL ];then echo "[ERROR] - No se ha indicado el valor total."; exit 2;fi
    if [ $VALOR_ESTADO -gt $VALOR_TOTAL ];then echo "[ERROR] - El valor estado no puede ser mayor que total."; exit 2;fi
}
