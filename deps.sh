#!/bin/bash

get_deps_folder()
{
diretorio=$1

# Arquivo de saída
saida=$2

# Limpa o arquivo de saída antes de começar
> "$saida"

# Loop para listar as pastas
for pasta in "$diretorio"/*; do
    if [ -d "$pasta" ]; then
        name=$(echo "$pasta" | sed 's|./|/|')
        echo "$3$name" >> "$saida"
    fi
done

echo "Lista de pastas gerada em $saida"

}

get_all()
{
  echo -e "deps of oca\n"
  export VERSION=13.0
  git clone -b ${VERSION} https://github.com/oca/l10n-brazil                                                       
  git clone -b ${VERSION}  https://github.com/oca/account-financial-reporting                                       
  git clone -b ${VERSION}  https://github.com/oca/account-payment                                                    
  git clone -b ${VERSION}  https://github.com/oca/bank-payment                                                       
  git clone -b ${VERSION}  https://github.com/oca/account-invoicing                                                  
  git clone -b ${VERSION}  https://github.com/oca/commission                                                         
  git clone -b ${VERSION}  https://github.com/oca/web                                                                
  git clone -b ${VERSION}  https://github.com/oca/mis-builder                                                        
  git clone -b ${VERSION}  https://github.com/oca/server-ux                                                          
  git clone -b ${VERSION}  https://github.com/oca/reporting-engine                                                   
  git clone -b ${VERSION}  https://github.com/oca/website-themes 
  git clone -b ${VERSION}  https://github.com/oca/field-service
  git clone -b ${VERSION}  https://github.com/oca/geospatial
  git clone -b ${VERSION}  https://github.com/oca/partner-contact
  git clone -b ${VERSION}  https://github.com/oca/stock-logistics-warehouse
  git clone -b ${VERSION}  https://github.com/oca/sale-workflow
}


help()
{
  echo -e "\n helper to deps of oca odoo \n"
  echo "get_all - clone all dependencies from branch with version"
  echo "get_deps_folder - list folde and pass intem to file, sample: $0 get . a.txt $"PWD""
}

"$@"
