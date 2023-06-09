% T�pico II
% Integrantes:
%     - Garc�a Vargas Michell Alejandro
%     - Le�n Paulin Daniel
% Grupo: 30           8vo. Semestre

clc;
clear all;
close all;

%% Diferenciar Letras %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load('./salidas/memoria_letras.mat');

nivel = 0.4;
valores = memoria(:, 1:2);
etiqueta = memoria(:, 3);

ruta = './entradas/SOFTWARE.jpg';
[letraPalabra, letraPalabra_ByN, letraPalabra_f, arrayLetras] = LeerImgByN(ruta, nivel, true);

palabra = '';
for i=1:size(arrayLetras, 1)
    imshow(~arrayLetras{i});
    letra_f = Caracteristicas(~arrayLetras{i});
    diferencia = zeros(size(valores, 1), 1);
    for j=1:size(valores, 1)
        diferencia(j) = sum(abs(valores(j, :) - letra_f));
    end
    
    encontrado = find(diferencia == min(diferencia));
    clase = etiqueta(encontrado);

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % NO IDENTIFICA BIEN LAS LETRAS %
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        
    switch clase
        case 1
            palabra = strcat(palabra, 'A');
        case 2
            palabra = strcat(palabra, 'B');
        case 3
            palabra = strcat(palabra, 'C');
        case 4
            palabra = strcat(palabra, 'D');
        case 5
            palabra = strcat(palabra, 'E');
        case 6
            palabra = strcat(palabra, 'F');
        case 7
            palabra = strcat(palabra, 'G');
        case 8
            palabra = strcat(palabra, 'H');
        case 9
            palabra = strcat(palabra, 'I');
        case 10
            palabra = strcat(palabra, 'J');
        case 11
            palabra = strcat(palabra, 'K');
        case 12
            palabra = strcat(palabra, 'L');
        case 13
            palabra = strcat(palabra, 'M');
        case 14
            palabra = strcat(palabra, 'N');
        case 15
            palabra = strcat(palabra, 'O');
        case 16
            palabra = strcat(palabra, 'P');
        case 17
            palabra = strcat(palabra, 'Q');
        case 18
            palabra = strcat(palabra, 'R');
        case 19
            palabra = strcat(palabra, 'S');
        case 20
            palabra = strcat(palabra, 'T');
        case 21
            palabra = strcat(palabra, 'U');
        case 22
            palabra = strcat(palabra, 'V');
        case 23
            palabra = strcat(palabra, 'W');
        case 24
            palabra = strcat(palabra, 'X');
        case 25
            palabra = strcat(palabra, 'Y');
        case 26
            palabra = strcat(palabra, 'Z');
    end
end

% clc;
display(palabra);


