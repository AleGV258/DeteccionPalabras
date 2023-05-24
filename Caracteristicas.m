% Tópico II
% Integrantes:
%     - García Vargas Michell Alejandro
%     - León Paulin Daniel
% Grupo: 30           8vo. Semestre

function [F]= Caracteristicas(img)
    img = double(img);
    promedio = mean(mean(img));
    desv_estandar = std((std(img)));
    F = [promedio, desv_estandar];
end

