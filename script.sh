#! /bin/sh

sshpass -p 'Kill3mAll@2586' scp -r -o StrictHostKeyChecking=no rgomez@10.0.0.41:/ /usr/local/rancid/var/Sucursales/configs/Ibarra/

email1=rgomez@puntonet.ec

ls -l /usr/local/rancid/var/Sucursales/configs/Ibarra >> message-mkt

if [ $? -eq 0 ]
    then
    mail -s 'BACKUP SUCURSAL IBARRA' $email1 < message-mkt
    fi

echo "" > message-mkt