% Tópico II
% Integrantes:
%     - García Vargas Michell Alejandro
%     - León Paulin Daniel
% Grupo: 30           8vo. Semestre

clc;
clear all;
close all;

%% Identificación y Lectura de Letras %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

nivel = 0.4;
ruta = './entradas/letras/';
letras = ['A'; 'B'; 'C'; 'D'; 'E'; 'F'; 'G'; 'H'; 'I'; 'J'; 'K'; 'L'; 'M'; 'N'; 'O'; 'P'; 'Q'; 'R'; 'S'; 'T'; 'U'; 'V'; 'W'; 'X'; 'Y'; 'Z'];

ruta_palabras = cell(size(letras, 1), 1);
tamano_directorio = zeros(size(letras, 1), 1);

% Cuenta la cantidad de archivos (excluyendo directorios)
for i = 1:size(letras, 1)
    ruta_palabras{i} = fullfile(ruta, letras(i, :), '/');
    archivos = dir(ruta_palabras{i});
    tamano_directorio(i) = sum(~[archivos.isdir]);
end

for i=1:size(tamano_directorio, 1)
    for j=1:tamano_directorio(i)
        [letra, letra_BYN, letra_f] = LeerImgByN(strcat(ruta_palabras{i}, 'tipo', num2str(i+12), '_', num2str(j), '.png'), nivel, false);
        imshow(letra);

        etiqueta = [i];
        caracteristicas = [letra_f];
        
        if(i == 1 && j == 1)
            memoria = [caracteristicas etiqueta];
        else
            memoria = [memoria; caracteristicas etiqueta];
        end
    end
end

save('./salidas/memoria_letras.mat');

