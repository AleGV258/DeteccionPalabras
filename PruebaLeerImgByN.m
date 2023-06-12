function [imagen, imagenBYN, imagenCaracteristicas, arrayLetras] = PruebaLeerImgByN(ruta, nivel)

    imagen = imread(ruta);

    imagenBYN = im2bw(imagen, nivel);
    imagenCaracteristicas = Caracteristicas(imagenBYN);
    [imagenDelimitada, arrayLetras] = PruebaSepararLetras(imagenBYN);
end
