function [matriz] = LeerImagenesBD(matriz, etiqueta, path, inicioImagenes, finalImagenes)

    for a = inicioImagenes:finalImagenes

        matriz(size(matriz, 1) + 1, :) = [Caracteristicas(imread([path, num2str(a), '.png'])), etiqueta];
    end

end
