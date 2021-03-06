-- Julio Cesar Correa
-- DBA Oracle

#!/bin/ksh

export ORACLE_SID=ocadb
export ORACLE_HOME=/u01/app/oracle
export DATE=$( date +%Y%m%d%H%M%S)
echo "iniciando o RMAN"
echo "O backup ser� enviado para a FRA"

. /u03/backup/scrpts/bkp_rman_incr_lev0.sh

echo "Finalizando o backup" >> /u03/backup/rman/log/bkp_rman_incr_lev0_$date_.log
echo "Backup incremental level 0 realizado com sucesso"

if [ $? -ne 0 ] 
then
  echo "Erro no backup via RMAN"
  exit -1
fi


