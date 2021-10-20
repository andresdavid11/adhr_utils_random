
pinta_log_TITULO(){
    texto=$1
    pinta_log_LINEA
    echo "---  ${texto}"
    pinta_log_LINEA
    echo ""
}

pinta_log_LINEA(){
    echo "--------------------------------------"
}

pinta_log_VACIO(){
    echo "" >> $LOG
}

pinta_log_OK(){
    texto=$1
    echo "[OK] - ${texto}" >> $LOG
}


pinta_log_sub_OK() {
    texto=$1
    echo "      [OK] - ${texto}" >> $LOG
}

pinta_log_INFO() {
    texto=$1
    echo "[INFO] - ${texto}" >> $LOG
}

pinta_log_sub_INFO() {
    texto=$1
    echo "      [INFO] - ${texto}" >> $LOG
}


pinta_log_WARNING() {
    texto=$1
    echo "[WARNING] - ${texto}" >> $LOG
}


pinta_log_sub_WARNING() {
    texto=$1
    echo "      [WARNING] - ${texto}." >> $LOG
}

pinta_log_KO() {
    texto=$1
    echo "[KO] - ${texto}" >> $LOG
}


pinta_log_sub_KO() {
    texto=$1
    echo "      [KO] - ${texto}" >> $LOG
}

pinta_opcion_menu(){
    opcion=$1
    descripcion=$2
    echo "  [$opcion] - $descripcion "
}



