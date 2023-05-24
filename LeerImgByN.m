% Tópico II
% Integrantes:
%     - García Vargas Michell Alejandro
%     - León Paulin Daniel
% Grupo: 30           8vo. Semestre

function [imagen, imagenBYN, imagenCaracteristicas] = LeerImgByN(ruta, nivel)
    imagen = imread(ruta);
    imagenBYN = im2bw(imagen, nivel);
    imagenCaracteristicas = Caracteristicas(imagenBYN);
    
    % Plotear
%     figure;
%     subplot(2, 1, 1);
%     imagesc(imagen);
%     subplot(2, 1, 2);
%     imagesc(imagenBYN);
%     colormap(gray);
end