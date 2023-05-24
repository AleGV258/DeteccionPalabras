% Tópico II
% Integrantes:
%     - García Vargas Michell Alejandro
%     - León Paulin Daniel
% Grupo: 30           8vo. Semestre

function [imagenDelimitada] = SepararLetras(imagen_umbralizada)
    %Rellenar agujeros
    imgRellenada = imfill(~imagen_umbralizada, 'holes');
    % figure; imshow(imgRellenada);

    % Eliminar ruido
    imgSinRuido = bwareaopen(imgRellenada, 9000);
    % figure, imshow(imgSinRuido);

    % Delimitar objetos
    stats = regionprops(imgSinRuido, 'BoundingBox');

    bbox = cat(1, stats.BoundingBox);

    for i = 1:size(stats)
        boundingBox = stats(i).BoundingBox; % [x, y, width, height]
        letra = imagen_umbralizada(boundingBox(2):boundingBox(2) + boundingBox(4) - 1, boundingBox(1):boundingBox(1) + boundingBox(3) - 1, :);
        figure, imshow(letra);
    end

    imagenDelimitada = insertShape(imagen_umbralizada, 'rectangle', bbox, 'LineWidth', 4);
    figure, imshow(imagenDelimitada);
end
