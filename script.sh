#!/bin/bash

orig='/media/rodrigo/OS/TESTE_antes_SAP/compilado_semana10/para_semana10'

dir='/media/rodrigo/OS/TESTE_antes_SAP/compilado_semana10/para_semana10/saida'

S='S10'

while  IFS=,  read   Indice   MI   Subfase   Etapa   Operador;

	do

            cp    "$orig"/"$MI".sqlite    "$dir"

            cd    "$dir"
      
            mv    "$dir"/"$MI".sqlite   "$dir"/"$S"_"$Subfase""_""$MI""_""$Etapa""_""$Operador".sqlite 
        
            zip   "$S"_"$Subfase""_""$MI""_""$Etapa""_""$Operador".sqlite.zip    "$S"_"$Subfase""_""$MI""_""$Etapa""_""$Operador".sqlite
        
            rm    "$dir"/"$S"_"$Subfase""_""$MI""_""$Etapa""_""$Operador".sqlite
        
done < lista    
  
