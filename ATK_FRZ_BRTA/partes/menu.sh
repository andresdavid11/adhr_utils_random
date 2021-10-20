
clear

pinta_log_TITULO "Bienvenido a ${MOMBRESCRIPT}"

#CONTROL USUARIO
if [ -z $USUARIO ]; then
    pinta_opcion_menu 1 "Introducir usuario | Usuario actual [NULL]"
else 
    pinta_opcion_menu 1 "Cambiar usuario | Usuario actual ["${USUARIO}"]"
fi

#CONTROL DIRECCION
if [ -z $DIRECCION ]; then
    pinta_opcion_menu 2 "Dirección del ataque | Establecido en [NULL]"
else  
    pinta_opcion_menu 2 "Dirección del ataque | Establecido en [$DIRECCION]"
fi

#CONTROL ORDEN
if [ ! $ORDEN -gt 0 ]; then
    pinta_opcion_menu 3 "Alternar Orden del ataque | Establecido en [De la A a la Z]"
else  
    pinta_opcion_menu 3 "Alternar Orden del ataque | Establecido en [De la Z a la A]"
fi

#CONTROL MAYUSCULAS
pinta_opcion_menu 4 "Incluir mayúsculas | Establecido en [$MAYUSCULAS]"

#CONTROL NUMEROS
pinta_opcion_menu 5 "Incluir números | Establecido en [$NUMEROS]"

#CONTROL NUMEROS
pinta_opcion_menu 6 "Incluir char especiales | Establecido en [$ESPECIALES]"

#CONTROL NUMEROS
pinta_opcion_menu 7 "Cambiar longitud minima de la palabra | Establecido en [$LONGITUD_MINIMA]"

#CONTROL NUMEROS
pinta_opcion_menu 8 "Cambiar longitud máxima de la palabra | Establecido en [$LONGITUD_MAXIMA]"

#CONTROL CONEXION
pinta_opcion_menu 9 "Cambiar el modo de conexion | Establecido en [$CONEXION]"

pinta_log_LINEA

#COMENZAR ATAQUE
pinta_opcion_menu 666 "COMENZAR ATAQUE"

pinta_opcion_menu 1234 "SALIR"

pinta_log_LINEA

read -p "Elige la opción:  " SELECCION


