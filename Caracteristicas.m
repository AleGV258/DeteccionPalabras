% T�pico II
% Integrantes:
%     - Garc�a Vargas Michell Alejandro
%     - Le�n Paulin Daniel
% Grupo: 30           8vo. Semestre

function [F]= Caracteristicas(img)
    img = double(img);
    promedio = mean(mean(img));
    desv_estandar = std((std(img)));
    F = [promedio, desv_estandar];
end

