
function progress() {
    CURRENT_PROGRESS=0

    status=$1
    total=$2

    let aux=$status*100
    let PARAM_PROGRESS=$aux/$total;
    PARAM_PHASE="";
    #PARAM_PHASE="Procesando...";

    if [ $PARAM_PROGRESS == 0 ] ; then echo -ne "[....................................................................................................] (0%)  $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 1 ] ; then echo -ne "[#...................................................................................................] (1%)  $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 2 ] ; then echo -ne "[##..................................................................................................] (2%)  $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 3 ] ; then echo -ne "[###.................................................................................................] (3%)  $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 4 ] ; then echo -ne "[####................................................................................................] (4%)  $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 5 ] ; then echo -ne "[#####...............................................................................................] (5%)  $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 6 ] ; then echo -ne "[######..............................................................................................] (6%)  $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 7 ] ; then echo -ne "[#######.............................................................................................] (7%)  $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 8 ] ; then echo -ne "[########............................................................................................] (8%)  $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 9 ] ; then echo -ne "[#########...........................................................................................] (9%)  $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 10 ]; then echo -ne "[##########..........................................................................................] (10%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 11 ]; then echo -ne "[###########.........................................................................................] (11%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 12 ]; then echo -ne "[############........................................................................................] (12%) $PARAM_PHASE"  ; fi; 
    if [ $PARAM_PROGRESS == 13 ]; then echo -ne "[#############.......................................................................................] (13%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 14 ]; then echo -ne "[##############......................................................................................] (14%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 15 ]; then echo -ne "[###############.....................................................................................] (15%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 16 ]; then echo -ne "[################....................................................................................] (16%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 17 ]; then echo -ne "[#################...................................................................................] (17%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 18 ]; then echo -ne "[##################..................................................................................] (18%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 19 ]; then echo -ne "[###################.................................................................................] (19%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 20 ]; then echo -ne "[####################................................................................................] (20%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 21 ]; then echo -ne "[#####################...............................................................................] (21%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 22 ]; then echo -ne "[######################..............................................................................] (22%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 23 ]; then echo -ne "[#######################.............................................................................] (23%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 24 ]; then echo -ne "[########################............................................................................] (24%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 25 ]; then echo -ne "[#########################...........................................................................] (25%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 26 ]; then echo -ne "[##########################..........................................................................] (26%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 27 ]; then echo -ne "[###########################.........................................................................] (27%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 28 ]; then echo -ne "[############################........................................................................] (28%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 29 ]; then echo -ne "[#############################.......................................................................] (29%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 30 ]; then echo -ne "[##############################......................................................................] (30%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 31 ]; then echo -ne "[###############################.....................................................................] (31%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 32 ]; then echo -ne "[################################....................................................................] (32%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 33 ]; then echo -ne "[#################################...................................................................] (33%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 34 ]; then echo -ne "[##################################..................................................................] (34%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 35 ]; then echo -ne "[###################################.................................................................] (35%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 36 ]; then echo -ne "[####################################................................................................] (36%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 37 ]; then echo -ne "[#####################################...............................................................] (37%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 38 ]; then echo -ne "[######################################..............................................................] (38%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 39 ]; then echo -ne "[#######################################.............................................................] (39%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 40 ]; then echo -ne "[########################################............................................................] (40%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 41 ]; then echo -ne "[#########################################...........................................................] (41%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 42 ]; then echo -ne "[##########################################..........................................................] (42%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 43 ]; then echo -ne "[###########################################.........................................................] (43%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 44 ]; then echo -ne "[############################################........................................................] (44%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 45 ]; then echo -ne "[#############################################.......................................................] (45%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 46 ]; then echo -ne "[##############################################......................................................] (46%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 47 ]; then echo -ne "[###############################################.....................................................] (47%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 48 ]; then echo -ne "[################################################....................................................] (48%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 49 ]; then echo -ne "[#################################################...................................................] (49%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 50 ]; then echo -ne "[##################################################..................................................] (50%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 51 ]; then echo -ne "[###################################################.................................................] (51%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 52 ]; then echo -ne "[####################################################................................................] (52%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 53 ]; then echo -ne "[#####################################################...............................................] (53%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 54 ]; then echo -ne "[######################################################..............................................] (54%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 55 ]; then echo -ne "[#######################################################.............................................] (55%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 56 ]; then echo -ne "[########################################################............................................] (56%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 57 ]; then echo -ne "[#########################################################...........................................] (57%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 58 ]; then echo -ne "[##########################################################..........................................] (58%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 59 ]; then echo -ne "[###########################################################.........................................] (59%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 60 ]; then echo -ne "[############################################################........................................] (60%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 61 ]; then echo -ne "[#############################################################.......................................] (61%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 62 ]; then echo -ne "[##############################################################......................................] (62%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 63 ]; then echo -ne "[###############################################################.....................................] (63%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 64 ]; then echo -ne "[################################################################....................................] (64%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 65 ]; then echo -ne "[#################################################################...................................] (65%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 66 ]; then echo -ne "[##################################################################..................................] (66%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 67 ]; then echo -ne "[###################################################################.................................] (67%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 68 ]; then echo -ne "[####################################################################................................] (68%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 69 ]; then echo -ne "[#####################################################################...............................] (69%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 70 ]; then echo -ne "[######################################################################..............................] (70%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 71 ]; then echo -ne "[#######################################################################.............................] (71%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 72 ]; then echo -ne "[########################################################################............................] (72%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 73 ]; then echo -ne "[#########################################################################...........................] (73%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 74 ]; then echo -ne "[##########################################################################..........................] (74%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 75 ]; then echo -ne "[###########################################################################.........................] (75%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 76 ]; then echo -ne "[############################################################################........................] (76%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 77 ]; then echo -ne "[#############################################################################.......................] (77%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 78 ]; then echo -ne "[##############################################################################......................] (78%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 79 ]; then echo -ne "[###############################################################################.....................] (79%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 80 ]; then echo -ne "[################################################################################....................] (80%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 81 ]; then echo -ne "[#################################################################################...................] (81%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 82 ]; then echo -ne "[##################################################################################..................] (82%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 83 ]; then echo -ne "[###################################################################################.................] (83%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 84 ]; then echo -ne "[####################################################################################................] (84%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 85 ]; then echo -ne "[#####################################################################################...............] (85%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 86 ]; then echo -ne "[######################################################################################..............] (86%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 87 ]; then echo -ne "[#######################################################################################.............] (87%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 88 ]; then echo -ne "[########################################################################################............] (88%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 89 ]; then echo -ne "[#########################################################################################...........] (89%) $PARAM_PHASE"  ; fi;
    if [ $PARAM_PROGRESS == 90 ]; then echo -ne "[##########################################################################################..........] (90%) $PARAM_PHASE" ; fi;
    if [ $PARAM_PROGRESS == 91 ]; then echo -ne "[###########################################################################################.........] (91%) $PARAM_PHASE" ; fi;
    if [ $PARAM_PROGRESS == 92 ]; then echo -ne "[############################################################################################........] (92%) $PARAM_PHASE" ; fi;
    if [ $PARAM_PROGRESS == 93 ]; then echo -ne "[#############################################################################################.......] (93%) $PARAM_PHASE" ; fi;
    if [ $PARAM_PROGRESS == 94 ]; then echo -ne "[##############################################################################################......] (94%) $PARAM_PHASE" ; fi;
    if [ $PARAM_PROGRESS == 95 ]; then echo -ne "[###############################################################################################.....] (95%) $PARAM_PHASE" ; fi;
    if [ $PARAM_PROGRESS == 96 ]; then echo -ne "[################################################################################################....] (96%) $PARAM_PHASE" ; fi;
    if [ $PARAM_PROGRESS == 97 ]; then echo -ne "[#################################################################################################...] (97%) $PARAM_PHASE" ; fi;
    if [ $PARAM_PROGRESS == 98 ]; then echo -ne "[##################################################################################################..] (98%) $PARAM_PHASE" ; fi;
    if [ $PARAM_PROGRESS == 99 ]; then echo -ne "[###################################################################################################.] (99%) $PARAM_PHASE" ; fi;
    if [ $PARAM_PROGRESS -gt 99 ]; then echo -ne "[####################################################################################################] (100%) $PARAM_PHASE" ; fi;
    
    CURRENT_PROGRESS=$PARAM_PROGRESS;

}





