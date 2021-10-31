#!/bin/bash
. ./config/config.cfg
. ./funciones/validaciones.sh
. ./funciones/generar_barra.sh
# - Recogemos los valores
VALOR_ESTADO=$1; # - Valor por el que vamos (Ej: 5)
VALOR_TOTAL=$2; # - Valor total (Ej: 100)
# - Realizamos comprobaciones para evitar errores
fnc_validaciones_iniciales $VALOR_ESTADO $VALOR_TOTAL
# - Realizamos regla de 3 para ajustar el valor al limite (100%)
let aux=$VALOR_ESTADO*$LIMITE; # - Calculo 1
let PARAM_PROGRESS=$aux/$VALOR_TOTAL; # - Calculo 2"
let FALTA=$LIMITE-PARAM_PROGRESS; # - Lo que falta por completar
# - Función que genera la barra de progreso
barra=$(fnc_gen_barra $PARAM_PROGRESS $FALTA $INCREMENTO $ICON_PROGRES $ICON_NULL)
# - Pintamos la salida 
$barra;
