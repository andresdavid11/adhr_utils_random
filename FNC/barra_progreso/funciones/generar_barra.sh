

function fnc_gen_barra(){

    PARAM_PROGRESS=$1;
    FALTA=$2;
    INCREMENTO=$3;
    ICON_PROGRES=$4;
    ICON_NULL=$5;
    inicio="echo -ne ["
    final="] (${PARAM_PROGRESS}%) \n"
    p=1; # - Creamos la barra de progreso
    while [ ! $p -gt $PARAM_PROGRESS ]; do
        progreso+="${ICON_PROGRES}";
        let p=$p+$INCREMENTO;
    done
    f=1; # - Creamos la barra que falta
    while [ ! $f -gt $FALTA ]; do
        falta+="${ICON_NULL}";
        let f=$f+$INCREMENTO;
    done    
    # - Unimos la barra
    row="${inicio}${progreso}${falta}${final}";
    echo $row;
}
