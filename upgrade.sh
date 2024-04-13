#!/bin/bash

export VERSION=13                                                                                                             
export DATABASE=database13                                                                                                      
export BACKUP_FILE=backup.sql                                                                                   
                            
# select addons
export list_addons=/opt/ocb_${VERSION}/addons,/opt/oca_${VERSION}/l10n-brazil,/opt/oca_${VERSION}/account-financial-reporting,/opt/oca_${VERSION}/account-payment,/opt/oca_${VERSION}/bank-payment,/opt/oca_${VERSION}/account-invoicing,/opt/oca_${VERSION}/commission,/opt/oca_${VERSION}/web,/opt/oca_${VERSION}/mis-builder,/opt/oca_${VERSION}/server-ux,/opt/oca_${VERSION}/reporting-engine,/opt/oca_${VERSION}/website-themes,/opt/oca_${VERSION}/field-service,/opt/oca_${VERSION}/geospatial,/opt/oca_${VERSION}/partner-contact,/opt/oca_${VERSION}/stock-logistics-warehouse,/opt/oca_${VERSION}/sale-workflow 

create_database()
{
        echo "create database"
        echo "CREATE DATABASE ${DATABASE} OWNER odoo;" > create-db.sql
        psql -f create-db.sql
}

restore_backup()
{
        psql ${DATABASE} < ${BACKUP_FILE}
}

change_user()
{
        echo "change user to odoo"
        su -s /bin/bash odoo
}

upgrade()
{
        ./openupgrade_${VERSION}/odoo-bin --addons=${list_addons} --database=${DATABASE} --load=base,web,openupgrade_framework --update all --stop-after-init
}

help() {
  echo -e "\nHelper to upgrade odoo version\n"
  echo -e "------------------------------\n"
  echo -e "create_database - function to create database to upgrade"
  echo -e "chagen_user - change user to odoo execute script"
  echo -e "upgrade - run this command with odoo user"
  echo -e "restore_backup - restore backup from file"
}

"$@"
