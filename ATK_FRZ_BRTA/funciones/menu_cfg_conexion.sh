
#Alternamos entre si el ataque es mediante SSH o SFTP
if [ $CONEXION == "SSH" ];then
    CONEXION="SFTP"
else
    CONEXION="SSH"
fi


