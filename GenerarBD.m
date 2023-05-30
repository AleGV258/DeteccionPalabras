clc;
clear all;
close all;

matrizAbecedario = [];

[matrizAbecedario] = LeerImagenesBD(matrizAbecedario, 1, 'BD/Abecedario/A/tipo13_', 1, 55); %'A' = 1
[matrizAbecedario] = LeerImagenesBD(matrizAbecedario, 2, 'BD/Abecedario/B/tipo14_', 1, 55); %'B' = 2
[matrizAbecedario] = LeerImagenesBD(matrizAbecedario, 3, 'BD/Abecedario/C/tipo15_', 1, 55); %'C' = 3
[matrizAbecedario] = LeerImagenesBD(matrizAbecedario, 4, 'BD/Abecedario/D/tipo16_', 1, 55); %'D' = 4
[matrizAbecedario] = LeerImagenesBD(matrizAbecedario, 5, 'BD/Abecedario/E/tipo17_', 1, 55); %'E' = 5
[matrizAbecedario] = LeerImagenesBD(matrizAbecedario, 6, 'BD/Abecedario/F/tipo18_', 1, 55); %'F' = 6
[matrizAbecedario] = LeerImagenesBD(matrizAbecedario, 7, 'BD/Abecedario/G/tipo19_', 1, 55); %'G' = 7
[matrizAbecedario] = LeerImagenesBD(matrizAbecedario, 8, 'BD/Abecedario/H/tipo20_', 1, 55); %'H' = 8
[matrizAbecedario] = LeerImagenesBD(matrizAbecedario, 9, 'BD/Abecedario/I/tipo21_', 1, 55); %'I' = 9
[matrizAbecedario] = LeerImagenesBD(matrizAbecedario, 10, 'BD/Abecedario/J/tipo22_', 1, 55); %'J' = 10
[matrizAbecedario] = LeerImagenesBD(matrizAbecedario, 11, 'BD/Abecedario/K/tipo23_', 1, 55); %'K' = 11
[matrizAbecedario] = LeerImagenesBD(matrizAbecedario, 12, 'BD/Abecedario/L/tipo24_', 1, 55); %'L' = 12
[matrizAbecedario] = LeerImagenesBD(matrizAbecedario, 13, 'BD/Abecedario/M/tipo25_', 1, 55); %'M' = 13
[matrizAbecedario] = LeerImagenesBD(matrizAbecedario, 14, 'BD/Abecedario/N/tipo26_', 1, 55); %'N' = 14
[matrizAbecedario] = LeerImagenesBD(matrizAbecedario, 15, 'BD/Abecedario/O/tipo27_', 1, 55); %'O' = 15
[matrizAbecedario] = LeerImagenesBD(matrizAbecedario, 16, 'BD/Abecedario/P/tipo28_', 1, 55); %'P' = 16
[matrizAbecedario] = LeerImagenesBD(matrizAbecedario, 17, 'BD/Abecedario/Q/tipo29_', 1, 55); %'Q' = 17
[matrizAbecedario] = LeerImagenesBD(matrizAbecedario, 18, 'BD/Abecedario/R/tipo30_', 1, 55); %'R' = 18
[matrizAbecedario] = LeerImagenesBD(matrizAbecedario, 19, 'BD/Abecedario/S/tipo31_', 1, 55); %'S' = 19
[matrizAbecedario] = LeerImagenesBD(matrizAbecedario, 20, 'BD/Abecedario/T/tipo32_', 1, 55); %'T' = 20
[matrizAbecedario] = LeerImagenesBD(matrizAbecedario, 21, 'BD/Abecedario/U/tipo33_', 1, 55); %'U' = 21
[matrizAbecedario] = LeerImagenesBD(matrizAbecedario, 22, 'BD/Abecedario/V/tipo34_', 1, 55); %'V' = 22
[matrizAbecedario] = LeerImagenesBD(matrizAbecedario, 23, 'BD/Abecedario/W/tipo35_', 1, 55); %'W' = 23
[matrizAbecedario] = LeerImagenesBD(matrizAbecedario, 24, 'BD/Abecedario/X/tipo36_', 1, 55); %'X' = 24
[matrizAbecedario] = LeerImagenesBD(matrizAbecedario, 25, 'BD/Abecedario/Y/tipo37_', 1, 55); %'Y' = 25
[matrizAbecedario] = LeerImagenesBD(matrizAbecedario, 26, 'BD/Abecedario/Z/tipo38_', 1, 55); %'Z' = 26

save('BD/AbecedarioBD.mat', 'matrizAbecedario');
