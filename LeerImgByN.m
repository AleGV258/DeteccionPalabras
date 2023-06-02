% T�pico II
% Integrantes:
%     - Garc�a Vargas Michell Alejandro
%     - Le�n Paulin Daniel
% Grupo: 30           8vo. Semestre

function [imagen, imagenBYN, imagenCaracteristicas, arrayLetras] = LeerImgByN(ruta, nivel, modo)
    if(modo == true)
        imagen = imread(ruta);
        imagenBYN = im2bw(imagen, nivel);
        imagenCaracteristicas = Caracteristicas(imagenBYN);
        [imagenDelimitada, arrayLetras] = SepararLetras(imagenBYN);
    else
        imagen = imresize(imread(ruta), [512 512]);
        imagenBYN = im2bw(imagen, nivel);
        imagenCaracteristicas = Caracteristicas(imagenBYN);
    end
    clc;
end