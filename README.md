# Helpers of Odoo

This scripts helper odoo manager based in odoo install by turnkeylinux

## How to use

- Entener in `/opt` and clone project with name of help:

```bash
git clone https://github.com/popsolutions/helper-odoo-update help
```
- create folder of owner deps like oca and enter in this folder

```bash
mkdir oca && cd oca
```

- create deps in oca file:

```bash
/opt/oca/web
/opt/oca/website
```

- get deps with command: `../help/deps.sh clone 16.0 /opt/oca/deps.txt /opt/oca oca`

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
