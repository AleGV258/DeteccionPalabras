% Topico II
% Integrantes:
%     - Garcia Vargas Michell Alejandro
%     - Leon Paulin Daniel
% Grupo: 30           8vo. Semestre

function [matriz] = LeerImagenesBD(matriz, etiqueta, path, inicioImagenes, finalImagenes)
    clc;
    for a = inicioImagenes:finalImagenes
        imagen_original = imread([path, num2str(a), '.png']);
        nivel = 0.4;
        imagenBYN = ~im2bw(imagen_original, nivel);

        % Rellenar agujeros
        imgRellenada = imfill(imagenBYN, 'holes');
        % figure; imshow(imgRellenada);

        % Eliminar ruido
        imgSinRuido = bwareaopen(imgRellenada, 1500); % Por defecto estaba en 9000
        % figure, imshow(imgSinRuido);

        % Delimitar objetos
        stats = regionprops(imgSinRuido, 'BoundingBox');
        bbox = cat(1, stats.BoundingBox);

        for i = 1:size(stats)
            boundingBox = stats(i).BoundingBox; % [x, y, width, height]
            letra = imagenBYN(boundingBox(2):boundingBox(2) + boundingBox(4) - 1, boundingBox(1):boundingBox(1) + boundingBox(3) - 1, :);
            letra = imresize(letra, [512 512]);
        end

        imagenDelimitada = insertShape(im2uint8(imagenBYN), 'rectangle', bbox, 'LineWidth', 4, 'Color', 'red');
        % figure, imshow(imagenDelimitada);

        if exist('letra', 'var') == 0
            letra = imresize(imagenBYN, [512 512]);
        end

        % imshow(letra);
        matriz(size(matriz, 1) + 1, :) = [Caracteristicas(letra), etiqueta];
    end
end
