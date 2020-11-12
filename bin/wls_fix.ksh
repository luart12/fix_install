#!/bin/ksh

# VARIABLES
FILE_ENV=$(dirname $0)/../env/general.conf

# CARGAR ARCHIVO DE CONFIGURACION
. ${ENV_FILE}

# LISTAR PRODUCTOS
while true
do  
    echo "1) WLS 11G"
    echo "2) WLS 12C"
        
    read PRODUCT

    case ${PRODUCT} in
    1)
        cat ${FILE_ALIAS_11G}|awk -F':' {'print $1'}

        while read FIX
        do
        
        done
    ;;
    2)
        cat ${FILE_ALIAS_12C}|awk -F':' {'print $1'}
    ;;
    *)
        echo "OPCION INVALIDA";; read xxx
    ;;
done

# LISTAR PARCHES
while true
do
    cat ${FILE_ALIAS}|awk -F':' {'print $1'}
    read PRODUCT
done

# INSTALL METHOD
case METHOD in
BSU)
    bsu.sh -install -patch_download_dir={MW_HOME}/utils/bsu/cache_dir -patchlist={PATCH_ID} -prod_dir={MW_HOME}/{WL_HOME}
;;
OPATCH)

;;
*) 
    echo "OPCION INVALIDA"
;;
essac
