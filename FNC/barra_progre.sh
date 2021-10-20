


function progress() {
    CURRENT_PROGRESS=0

    status=$1
    total=$2

    let aux=$status*100
    let PARAM_PROGRESS=$aux/$total;
    PARAM_PHASE="Procesando...";

    if [ $PARAM_PROGRESS == 0 ] ; then echo -ne "[..........................] (0%)  $PARAM_PHASE \r"  ; fi;
    if [ $PARAM_PROGRESS == 5 ] ; then echo -ne "[#.........................] (5%)  $PARAM_PHASE \r"  ; fi;
    if [ $PARAM_PROGRESS == 10 ]; then echo -ne "[##........................] (10%) $PARAM_PHASE \r"  ; fi;
    if [ $PARAM_PROGRESS == 15 ]; then echo -ne "[###.......................] (15%) $PARAM_PHASE \r"  ; fi;
    if [ $PARAM_PROGRESS == 20 ]; then echo -ne "[####......................] (20%) $PARAM_PHASE \r"  ; fi;
    if [ $PARAM_PROGRESS == 25 ]; then echo -ne "[#####.....................] (25%) $PARAM_PHASE \r"  ; fi;
    if [ $PARAM_PROGRESS == 30 ]; then echo -ne "[######....................] (30%) $PARAM_PHASE \r"  ; fi;
    if [ $PARAM_PROGRESS == 35 ]; then echo -ne "[#######...................] (35%) $PARAM_PHASE \r"  ; fi;
    if [ $PARAM_PROGRESS == 40 ]; then echo -ne "[########..................] (40%) $PARAM_PHASE \r"  ; fi;
    if [ $PARAM_PROGRESS == 45 ]; then echo -ne "[#########.................] (45%) $PARAM_PHASE \r"  ; fi;
    if [ $PARAM_PROGRESS == 50 ]; then echo -ne "[##########................] (50%) $PARAM_PHASE \r"  ; fi;
    if [ $PARAM_PROGRESS == 55 ]; then echo -ne "[###########...............] (55%) $PARAM_PHASE \r"  ; fi;
    if [ $PARAM_PROGRESS == 60 ]; then echo -ne "[############..............] (60%) $PARAM_PHASE \r"  ; fi;
    if [ $PARAM_PROGRESS == 65 ]; then echo -ne "[#############.............] (65%) $PARAM_PHASE \r"  ; fi;
    if [ $PARAM_PROGRESS == 70 ]; then echo -ne "[###############...........] (70%) $PARAM_PHASE \r"  ; fi;
    if [ $PARAM_PROGRESS == 75 ]; then echo -ne "[#################.........] (75%) $PARAM_PHASE \r"  ; fi;
    if [ $PARAM_PROGRESS == 80 ]; then echo -ne "[####################......] (80%) $PARAM_PHASE \r"  ; fi;
    if [ $PARAM_PROGRESS == 85 ]; then echo -ne "[#######################...] (85%) $PARAM_PHASE \r"  ; fi;
    if [ $PARAM_PROGRESS == 90 ]; then echo -ne "[##########################] (100%) $PARAM_PHASE \r" ; fi;
    if [  $PARAM_PROGRESS == 100 ];then echo -ne 'Done!                                            \n' ; fi;

    CURRENT_PROGRESS=$PARAM_PROGRESS;

}





