#!/bin/bash

. cfg/general.cfg
. cfg/funciones.sh
. util/barra_progre.sh

echo "" > $LOG

# - Eliminamos ficheros temporales para una ejecución limpia
rm -fr tmp/*

while [ $MARCADO_SALIDA -gt 0 ]; do
    #LLamamos al menu
    . partes/menu.sh

    case ${SELECCION} in
        '1')
            . funciones/menu_cfg_usuario.sh
        ;;
        '2')
            . funciones/menu_cfg_direccion.sh
        ;;
        '3')
            . funciones/menu_cfg_orden.sh
        ;;
        '4')
            . funciones/menu_cfg_mayus.sh
        ;;
        '5')
            . funciones/menu_cfg_numbers.sh
        ;;
        '6')
            . funciones/menu_cfg_char_esp.sh
        ;;
        '7')
            . funciones/menu_cfg_min_pass.sh
        ;;
        '8')
            . funciones/menu_cfg_max_pass.sh
        ;;
        '9')
            . funciones/menu_cfg_conexion.sh
        ;;
        '666')
            . partes/al_turron.sh
        ;;
        '1234')
            MARCADO_SALIDA=0
        ;;
        *)
            pinta_log_sub_KO "La opcion ${SELECCION} no existe. Intente de nuevo"
        ;;
    esac
done




