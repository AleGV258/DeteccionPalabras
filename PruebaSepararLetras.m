% T�pico II
% Integrantes:
%     - Garc�a Vargas Michell Alejandro
%     - Le�n Paulin Daniel
% Grupo: 30           8vo. Semestre

function [imagenDelimitada, ArrayLetras] = SepararLetras(imagen_umbralizada)
    %Rellenar agujeros
    imgRellenada = imfill(~imagen_umbralizada, 'holes');
    % figure; imshow(imgRellenada);

    % Eliminar ruido
    imgSinRuido = bwareaopen(imgRellenada, 1500); % Por defecto estaba en 9000
    % figure, imshow(imgSinRuido);

    % Delimitar objetos
    stats = regionprops(imgSinRuido, 'BoundingBox');

    bbox = cat(1, stats.BoundingBox);
    ArrayLetras = cell(size(stats, 1), 1);

    % mkdir(strcat('./salidas/', palabra, '/'));
    for i = 1:size(stats)
        boundingBox = stats(i).BoundingBox; % [x, y, width, height]
        letra = imagen_umbralizada(boundingBox(2):boundingBox(2) + boundingBox(4) - 1, boundingBox(1):boundingBox(1) + boundingBox(3) - 1, :);
        letra = imresize(letra, [512 512]);
        ArrayLetras{i} = letra;
        % figure, imshow(letra);
        % imwrite(letra, strcat('./salidas/', palabra, '/', num2str(i), '.jpg'));
    end

    imagenDelimitada = insertShape(im2uint8(imagen_umbralizada), 'rectangle', bbox, 'LineWidth', 4, 'Color', 'red');
    figure, imshow(imagenDelimitada);
end
