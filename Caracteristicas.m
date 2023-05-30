function [F]= Caracteristicas(img)
    img = double(img);
    promedio = mean(mean(img));
    desv_estandar = std((std(img)));
    F = [promedio, desv_estandar];%promedio, desv_estandar
end

