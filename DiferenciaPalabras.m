% T�pico II
% Integrantes:
%     - Garc�a Vargas Michell Alejandro
%     - Le�n Paulin Daniel
% Grupo: 30           8vo. Semestre

clc;
clear all;
close all;

%% Diferenciar Palabras %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

nivel = 0.4;

load('./salidas/memoria_palabras.mat');

[palabra, palabraByN, palabra_f] = LeerImgByN('./entradas/pruebas/xocoyotePrueba4.jpg', nivel, 'prueba_palabra', false);

valores = memoria(:, 1:2);
etiqueta = memoria(:, 3);

for i = 1:size(valores, 1)
    diferencia(i, :) = sum(abs(valores(i, :) - palabra_f));
end

encontrado = find(diferencia == min(diferencia));
clase = etiqueta(encontrado);

switch clase
    case 1
        disp("murcielago");
    case 2
        disp("abuelito");
    case 3
        disp("xocoyote");
end

%% Diferenciar Letras %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load('./salidas/memoria_letras.mat');

ruta = './salidas/murcielago1/';
ruta_letras = dir(ruta);

% Cuenta la cantidad de archivos (excluyendo directorios)
cantidad_archivos = sum(~[ruta_letras.isdir]);

valores = memoria(:, 1:2);
etiqueta = memoria(:, 3);

for i = 1:cantidad_archivos
    [letra, letraByN, letra_f] = LeerImgByN(strcat(ruta, num2str(i), '.jpg'), nivel, 'prueba_letra', false);

    for i = 1:size(valores, 1)
        diferencia(i, :) = sum(abs(valores(i, :) - letra_f));
    end

    encontrado = find(diferencia == min(diferencia));
    clase = etiqueta(encontrado);

    switch clase
        case 1
            disp("a");
        case 2
            disp("b");
        case 3
            disp("c");
        case 4
            disp("d");
        case 5
            disp("e");
        case 6
            disp("f");
        case 7
            disp("g");
        case 8
            disp("h");
        case 9
            disp("i");
        case 10
            disp("j");
        case 11
            disp("k");
        case 12
            disp("l");
        case 13
            disp("m");
        case 14
            disp("n");
        case 15
            disp("ñ");
        case 16
            disp("o");
        case 17
            disp("p");
        case 18
            disp("q");
        case 19
            disp("r");
        case 20
            disp("s");
        case 21
            disp("t");
        case 22
            disp("u");
        case 23
            disp("v");
        case 24
            disp("w");
        case 25
            disp("x");
        case 26
            disp("y");
        case 27
            disp("z");
    end
end

