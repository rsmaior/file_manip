#!/usr/bin/python3
# -*- coding: utf-8 -*-

# Python3 code to rename multiple 
# files in a directory or folder 

import os 

PATH="/media/rodrigo/OS/TESTE_antes_SAP/compilado_semana10/74_arquivos/"


# Finding nth occurrence of substring 
def str_index(ini_str,sub_str,occurrence):
    val = 0
    for i in range(0, occurrence): 
        val = ini_str.find(sub_str, val) 
        return val


### acrescenta a string .sqlite ao final do nome 
def extensao(name):
    src = name + ".sqlite"
    return src


# Function to rename multiple files 
def main(): 
    for count,filename    in      enumerate(os.listdir(PATH)):
        posicao = str_index(filename, '_2',1)
        MI = filename[posicao+1 : posicao+10]
        dest = PATH + extensao(MI)
        src = PATH + filename
        os.rename(src, dest)


main()
