% Tópico II
% Integrantes:
%     - García Vargas Michell Alejandro
%     - León Paulin Daniel
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
            disp("m");
        case 2
            disp("u");
        case 3
            disp("r");
        case 4
            disp("c");
        case 5
            disp(".");
        case 6
            disp("i");
        case 7
            disp("e");
        case 8
            disp("l");
        case 9
            disp("a");
        case 10
            disp("g");
        case 11
            disp("o");
    end
end

