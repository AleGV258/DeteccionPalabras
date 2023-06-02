clc;
clear all;
close all;

matrizAbecedario = [];

[matrizAbecedario] = LeerImagenesBD(matrizAbecedario, 1, 'entradas/letras/A/tipo13_', 1, 55); %'A' = 1
[matrizAbecedario] = LeerImagenesBD(matrizAbecedario, 2, 'entradas/letras/B/tipo14_', 1, 55); %'B' = 2
[matrizAbecedario] = LeerImagenesBD(matrizAbecedario, 3, 'entradas/letras/C/tipo15_', 1, 55); %'C' = 3
[matrizAbecedario] = LeerImagenesBD(matrizAbecedario, 4, 'entradas/letras/D/tipo16_', 1, 55); %'D' = 4
[matrizAbecedario] = LeerImagenesBD(matrizAbecedario, 5, 'entradas/letras/E/tipo17_', 1, 55); %'E' = 5
[matrizAbecedario] = LeerImagenesBD(matrizAbecedario, 6, 'entradas/letras/F/tipo18_', 1, 55); %'F' = 6
[matrizAbecedario] = LeerImagenesBD(matrizAbecedario, 7, 'entradas/letras/G/tipo19_', 1, 55); %'G' = 7
[matrizAbecedario] = LeerImagenesBD(matrizAbecedario, 8, 'entradas/letras/H/tipo20_', 1, 55); %'H' = 8
[matrizAbecedario] = LeerImagenesBD(matrizAbecedario, 9, 'entradas/letras/I/tipo21_', 1, 55); %'I' = 9
[matrizAbecedario] = LeerImagenesBD(matrizAbecedario, 10, 'entradas/letras/J/tipo22_', 1, 55); %'J' = 10
[matrizAbecedario] = LeerImagenesBD(matrizAbecedario, 11, 'entradas/letras/K/tipo23_', 1, 55); %'K' = 11
[matrizAbecedario] = LeerImagenesBD(matrizAbecedario, 12, 'entradas/letras/L/tipo24_', 1, 55); %'L' = 12
[matrizAbecedario] = LeerImagenesBD(matrizAbecedario, 13, 'entradas/letras/M/tipo25_', 1, 55); %'M' = 13
[matrizAbecedario] = LeerImagenesBD(matrizAbecedario, 14, 'entradas/letras/N/tipo26_', 1, 55); %'N' = 14
[matrizAbecedario] = LeerImagenesBD(matrizAbecedario, 15, 'entradas/letras/O/tipo27_', 1, 55); %'O' = 15
[matrizAbecedario] = LeerImagenesBD(matrizAbecedario, 16, 'entradas/letras/P/tipo28_', 1, 55); %'P' = 16
[matrizAbecedario] = LeerImagenesBD(matrizAbecedario, 17, 'entradas/letras/Q/tipo29_', 1, 55); %'Q' = 17
[matrizAbecedario] = LeerImagenesBD(matrizAbecedario, 18, 'entradas/letras/R/tipo30_', 1, 55); %'R' = 18
[matrizAbecedario] = LeerImagenesBD(matrizAbecedario, 19, 'entradas/letras/S/tipo31_', 1, 55); %'S' = 19
[matrizAbecedario] = LeerImagenesBD(matrizAbecedario, 20, 'entradas/letras/T/tipo32_', 1, 55); %'T' = 20
[matrizAbecedario] = LeerImagenesBD(matrizAbecedario, 21, 'entradas/letras/U/tipo33_', 1, 55); %'U' = 21
[matrizAbecedario] = LeerImagenesBD(matrizAbecedario, 22, 'entradas/letras/V/tipo34_', 1, 55); %'V' = 22
[matrizAbecedario] = LeerImagenesBD(matrizAbecedario, 23, 'entradas/letras/W/tipo35_', 1, 55); %'W' = 23
[matrizAbecedario] = LeerImagenesBD(matrizAbecedario, 24, 'entradas/letras/X/tipo36_', 1, 55); %'X' = 24
[matrizAbecedario] = LeerImagenesBD(matrizAbecedario, 25, 'entradas/letras/Y/tipo37_', 1, 55); %'Y' = 25
[matrizAbecedario] = LeerImagenesBD(matrizAbecedario, 26, 'entradas/letras/Z/tipo38_', 1, 55); %'Z' = 26

save('BD/AbecedarioBD.mat', 'matrizAbecedario');
