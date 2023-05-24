% T�pico II
% Integrantes:
%     - Garc�a Vargas Michell Alejandro
%     - Le�n Paulin Daniel
% Grupo: 30           8vo. Semestre

clc;
clear all;
close all;

load('./salidas/memoria_palabras.mat');

[palabra, palabraByN, palabra_f] = LeerImgByN('./entradas/pruebas/xocoyotePrueba2.jpg', 0.5);

valores = memoria(:, 1:2);
etiqueta = memoria(:, 3);

for i = 1: size(valores, 1)
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
