% T�pico II
% Integrantes:
%     - Garc�a Vargas Michell Alejandro
%     - Le�n Paulin Daniel
% Grupo: 30           8vo. Semestre

clc;
clear all;
close all;

%% Identificaci�n y Lectura de Palabras %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

nivel = 0.4;

[murcielago1, murcielagoBYN1, murcielago_f1] = LeerImgByN('./entradas/murcielago1.jpg', nivel, 'murcielago1', true);
[murcielago2, murcielagoBYN2, murcielago_f2] = LeerImgByN('./entradas/murcielago2.jpg', nivel, 'murcielago2', true);
[murcielago3, murcielagoBYN3, murcielago_f3] = LeerImgByN('./entradas/murcielago3.jpg', nivel, 'murcielago3', true);
[murcielago4, murcielagoBYN4, murcielago_f4] = LeerImgByN('./entradas/murcielago4.jpg', nivel, 'murcielago4', true);

[abuelito1, abuelitoBYN1, abuelito_f1] = LeerImgByN('./entradas/abuelito1.jpg', nivel, 'abuelito1', true);
[abuelito2, abuelitoBYN2, abuelito_f2] = LeerImgByN('./entradas/abuelito2.jpg', nivel, 'abuelito2', true);
[abuelito3, abuelitoBYN3, abuelito_f3] = LeerImgByN('./entradas/abuelito3.jpg', nivel, 'abuelito3', true);
[abuelito4, abuelitoBYN4, abuelito_f4] = LeerImgByN('./entradas/abuelito4.jpg', nivel, 'abuelito4', true);

[xocoyote1, xocoyoteBYN1, xocoyote_f1] = LeerImgByN('./entradas/xocoyote1.jpg', nivel, 'xocoyote1', true);
[xocoyote2, xocoyoteBYN2, xocoyote_f2] = LeerImgByN('./entradas/xocoyote2.jpg', nivel, 'xocoyote2', true);
[xocoyote3, xocoyoteBYN3, xocoyote_f3] = LeerImgByN('./entradas/xocoyote3.jpg', nivel, 'xocoyote3', true);
[xocoyote4, xocoyoteBYN4, xocoyote_f4] = LeerImgByN('./entradas/xocoyote4.jpg', nivel, 'xocoyote4', true);

etiqueta = [1; 1; 1; 1];
caracteristicas = [murcielago_f1; murcielago_f2; murcielago_f3; murcielago_f4];
memoria = [caracteristicas etiqueta];

etiqueta = [2; 2; 2; 2];
caracteristicas = [abuelito_f1; abuelito_f2; abuelito_f3; abuelito_f4];
memoria = [memoria; caracteristicas etiqueta];

etiqueta = [3; 3; 3; 3];
caracteristicas = [xocoyote_f1; xocoyote_f2; xocoyote_f3; xocoyote_f4];
memoria = [memoria; caracteristicas etiqueta];

save('./salidas/memoria_palabras.mat');

%% Identificaci�n y Lectura de Letras %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

ruta = './salidas/murcielago';

ruta_palabra1 = dir(strcat(ruta, '1/'));
ruta_palabra2 = dir(strcat(ruta, '2/'));
ruta_palabra3 = dir(strcat(ruta, '3/'));
ruta_palabra4 = dir(strcat(ruta, '4/'));

% Cuenta la cantidad de archivos (excluyendo directorios)
cantidad_archivos1 = sum(~[ruta_palabra1.isdir]);
cantidad_archivos2 = sum(~[ruta_palabra2.isdir]);
cantidad_archivos3 = sum(~[ruta_palabra3.isdir]);
cantidad_archivos4 = sum(~[ruta_palabra4.isdir]);

for i = 1:cantidad_archivos1
    [letra1, letraBYN1, letra_f1] = LeerImgByN(strcat(ruta, '1/', num2str(i), '.jpg'), nivel, 'murcielago1', false);
    [letra2, letraBYN2, letra_f2] = LeerImgByN(strcat(ruta, '2/', num2str(i), '.jpg'), nivel, 'murcielago2', false);
    [letra3, letraBYN3, letra_f3] = LeerImgByN(strcat(ruta, '3/', num2str(i), '.jpg'), nivel, 'murcielago3', false);
    [letra4, letraBYN4, letra_f4] = LeerImgByN(strcat(ruta, '4/', num2str(i), '.jpg'), nivel, 'murcielago4', false);
    
    etiqueta = [i; i; i; i];
    caracteristicas = [letra_f1; letra_f2; letra_f3; letra_f4];
    
    if(i == 1)
        memoria = [caracteristicas etiqueta];
    else
        memoria = [memoria; caracteristicas etiqueta];
    end
end

save('./salidas/memoria_letras.mat');