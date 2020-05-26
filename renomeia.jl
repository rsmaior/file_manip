#!/usr/bin/julia

# Julia code to rename multiple 
# files in a directory or folder 


PATH="/media/rodrigo/OS/TESTE_antes_SAP/compilado_semana8/google/teste3/"
cd(PATH) 


# Index of occurrence of substring 
function str_index(sub_str,ini_str)
    str_range = findfirst(sub_str, ini_str)
    pos_array = collect(str_range)
    return Int64(pos_array[1]) + 1
end


# Gera o MI, com base no filename, posicao do pattern e nr characteres MI
function MI(nome, index, size)
    MI = SubString(nome, index:(index+size))
    return MI
end

    
function main()
    lista = readdir()
    pattern = "_2"
    for n in 1:length(lista)
        pos = str_index(pattern, lista[n])
        final = MI(lista[n], pos, 8) 
        sqlite = final * ".sqlite" # * concatena string
        mv(lista[n], sqlite)
    end
end


main()
