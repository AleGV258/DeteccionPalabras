% function [matriz] = LeerImagenesBD(matriz, etiqueta, path, inicioImagenes, finalImagenes)

%     for a = inicioImagenes:finalImagenes

%         matriz(size(matriz, 1) + 1, :) = [Caracteristicas(imread([path, num2str(a), '.png'])), etiqueta];
%     end

% end

function [matriz] = LeerImagenesBD(matriz, etiqueta, path, inicioImagenes, finalImagenes)

    for a = inicioImagenes:finalImagenes
        imagen_original = imread([path, num2str(a), '.png'])
        imagen_escala = imresize(imagen_original, [500, 500]);
        matriz(size(matriz, 1) + 1, :) = [Caracteristicas(imagen_escala), etiqueta];
    end

end
