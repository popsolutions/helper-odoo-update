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

clone()
{
echo -e "deps of oca\n"
export VERSION=$1
export FILE=$2
export REPLACE=$3

for item in $(cat $FILE); do
   if [ -n "$item" ]; then
        project=$(echo "$item" | sed "s|"$REPLACE"||")
        echo "$project"
        git clone -b ${VERSION} https://github.com/oca/${project}
    fi
done
}


help()
{
  echo -e "\n helper to deps of oca odoo \n"
  echo -e "clone - clone all dependencies from branch with version: \n $0 clone VERSION FILE_LIST REPLACE \n exeample: clone 12.0 a.txt /opt/oca\n"
  echo "get_deps_folder - list folde and pass intem to file, sample: $0 get . a.txt $"PWD""
}

"$@"
