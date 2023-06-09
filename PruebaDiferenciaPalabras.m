clc;
clear all;
close all;

%% Diferenciar Letras %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load('./BD/AbecedarioBD.mat');

nivel = 0.4;
valores = memoria;
% etiqueta = matrizAbecedario(:, 3);

% ruta = './entradas/palabrasCreadas/AbuelIto.jpg';
ruta = './entradas/palabrasCreadas/ABUELITO2.jpg';

[letraPalabra, letraPalabra_ByN, letraPalabra_f, arrayLetras] = PruebaLeerImgByN(ruta, nivel);

palabra = '';

for i = 1:size(arrayLetras, 1)
    % imshow(~arrayLetras{i});
    letra_f = Caracteristicas(~arrayLetras{i});
    % diferencia = zeros(size(valores, 1), 1); % Inicializar diferencia en cada iteraci�n del bucle externo
    diferencia = zeros(size(valores, 1), 2);

    for j = 1:size(valores, 1)
        diferencia(j, 1) = sum(abs(valores(j, 1:2) - letra_f));
        diferencia(j, 2) = valores(j, 3);
    end

    arrOrdenado = sortrows(diferencia, 1);

    encontrado = arrOrdenado(1, 1);
    clase = arrOrdenado(1, 2);

    disp('Primeros 20 valores');
    disp(arrOrdenado(1:20, 1:2));
    %imagentemp = imread('');
    %figure, imshow(imagentemp);


    switch clase
        case 1
            palabra = strcat(palabra, 'a');
        case 2
            palabra = strcat(palabra, 'b');
        case 3
            palabra = strcat(palabra, 'c');
        case 4
            palabra = strcat(palabra, 'd');
        case 5
            palabra = strcat(palabra, 'e');
        case 6
            palabra = strcat(palabra, 'f');
        case 7
            palabra = strcat(palabra, 'g');
        case 8
            palabra = strcat(palabra, 'h');
        case 9
            palabra = strcat(palabra, 'i');
        case 10
            palabra = strcat(palabra, 'j');
        case 11
            palabra = strcat(palabra, 'k');
        case 12
            palabra = strcat(palabra, 'l');
        case 13
            palabra = strcat(palabra, 'm');
        case 14
            palabra = strcat(palabra, 'n');
        case 15
            palabra = strcat(palabra, 'o');
        case 16
            palabra = strcat(palabra, 'p');
        case 17
            palabra = strcat(palabra, 'q');
        case 18
            palabra = strcat(palabra, 'r');
        case 19
            palabra = strcat(palabra, 's');
        case 20
            palabra = strcat(palabra, 't');
        case 21
            palabra = strcat(palabra, 'u');
        case 22
            palabra = strcat(palabra, 'v');
        case 23
            palabra = strcat(palabra, 'w');
        case 24
            palabra = strcat(palabra, 'x');
        case 25
            palabra = strcat(palabra, 'y');
        case 26
            palabra = strcat(palabra, 'z');

        case 27
            palabra = strcat(palabra, 'A');
        case 28
            palabra = strcat(palabra, 'B');
        case 29
            palabra = strcat(palabra, 'C');
        case 30
            palabra = strcat(palabra, 'D');
        case 31
            palabra = strcat(palabra, 'E');
        case 32
            palabra = strcat(palabra, 'F');
        case 33
            palabra = strcat(palabra, 'G');
        case 34
            palabra = strcat(palabra, 'H');
        case 35
            palabra = strcat(palabra, 'I');
        case 36
            palabra = strcat(palabra, 'J');
        case 37
            palabra = strcat(palabra, 'K');
        case 38
            palabra = strcat(palabra, 'L');
        case 39
            palabra = strcat(palabra, 'M');
        case 40
            palabra = strcat(palabra, 'N');
        case 41
            palabra = strcat(palabra, 'O');
        case 42
            palabra = strcat(palabra, 'P');
        case 43
            palabra = strcat(palabra, 'Q');
        case 44
            palabra = strcat(palabra, 'R');
        case 45
            palabra = strcat(palabra, 'S');
        case 46
            palabra = strcat(palabra, 'T');
        case 47
            palabra = strcat(palabra, 'U');
        case 48
            palabra = strcat(palabra, 'V');
        case 49
            palabra = strcat(palabra, 'W');
        case 50
            palabra = strcat(palabra, 'X');
        case 51
            palabra = strcat(palabra, 'Y');
        case 52
            palabra = strcat(palabra, 'Z');
    end

end

% clc;
display(palabra);
