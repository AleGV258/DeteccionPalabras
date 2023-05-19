imagen = imread('./entradas/xocoyote4.jpg');

imagen_umbralizada = im2bw(imagen, 0.3);

%%%% HASTA AQUI ES LO QUE SE HACE EN LEERPALABRAS


% Etiquetar los objetos en la imagen
objetos_etiquetados = bwlabel(imagen_umbralizada);

% Obtener propiedades de los objetos etiquetados
propiedades_objetos = regionprops(objetos_etiquetados, 'BoundingBox', 'Centroid');

% Mostrar cada objeto con su etiqueta y propiedades
figure;
imshow(imagen_umbralizada);
hold on;

for i = 1:length(propiedades_objetos)
    % Obtener la caja delimitadora (BoundingBox) y el centroide (Centroid) de cada objeto
    caja = propiedades_objetos(i).BoundingBox;
    centroide = propiedades_objetos(i).Centroid;

    % Dibujar la caja delimitadora y el n�mero de etiqueta en la imagen
    rectangle('Position', caja, 'EdgeColor', 'r', 'LineWidth', 2);
    text(centroide(1), centroide(2), num2str(i), 'Color', 'r', 'FontSize', 12);
end

%
% Etiquetar los objetos en la imagen
etiquetas = bwlabel(xocoyoteBYN4);
% Contar el nï¿½mero de objetos
objetos = max(etiquetas);
num_objetos = max(objetos);

% Mostrar cada objeto por separado
% for i = 1:num_objetos
%     imagenNueva = zeros(size(xocoyoteBYN4));
%     [m, n] = size(imagenNueva);
%     for a = 1:m
%         for j = 1:n
%             if etiquetas(a,j) == i
%                 imagenNueva(a,j) = 1;
%             end
%         end
%     end
%     figure;
%     subplot(1,1,1);
%     imagesc(imagenNueva);
%     % % Crear una imagen en negro del mismo tamaï¿½o que la imagen original
%     % objeto = zeros(size(xocoyoteBYN1));

%     % % Extraer el objeto actual
%     % objetos(etiquetas == i) = 255;

%     % % Mostrar el objeto actual
%     % figure;
%     % imshow(objeto);
%     % title(['Objeto ', num2str(i)]);
% end
