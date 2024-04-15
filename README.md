# Helpers of Odoo

This scripts helper odoo manager.

## Upgrade 

The script upgrade.sh has tools to help upgrade version of odoo.

- help - list all commands
- create_database - function to create database to upgrade
- chagen_user - change user to odoo execute script
- upgrade - run this command with odoo user
- restore_backup - restore backup from file

## Dependencies

The script deps.sh has tools to download deps from version to upgrade.

- clone - clone all dependencies from branch with version: 
   - ./deps.sh clone VERSION FILE_LIST REPLACE 
   - exeample: clone 12.0 a.txt /opt/oca

- get_deps_folder - list folde and pass intem to file, sample: ./deps.sh get . a.txt $PWD
