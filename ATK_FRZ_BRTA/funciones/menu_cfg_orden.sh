

#Invertimos orden
if [ $ORDEN -gt 0 ];then
    ORDEN=0
    ALFABETO_MINUS="a b c d e f g h i j k l m n ñ o p q r s t u w x y z"
else
    ORDEN=1
    ALFABETO_MINUS="z y x w u t s r p q o ñ n m l k j i h g f e d c b a"
fi


