% Tópico II
% Integrantes:
%     - García Vargas Michell Alejandro
%     - León Paulin Daniel
% Grupo: 30           8vo. Semestre

clc;
clear all;
close all;

nivel = 0.5;

[murcielago1, murcielagoBYN1, murcielago_f1] = LeerImgByN('./entradas/murcielago1.jpg', nivel);
[murcielago2, murcielagoBYN2, murcielago_f2] = LeerImgByN('./entradas/murcielago2.jpg', nivel);
[murcielago3, murcielagoBYN3, murcielago_f3] = LeerImgByN('./entradas/murcielago3.jpg', nivel);
[murcielago4, murcielagoBYN4, murcielago_f4] = LeerImgByN('./entradas/murcielago4.jpg', nivel);

[abuelito1, abuelitoBYN1, abuelito_f1] = LeerImgByN('./entradas/abuelito1.jpg', nivel);
[abuelito2, abuelitoBYN2, abuelito_f2] = LeerImgByN('./entradas/abuelito2.jpg', nivel);
[abuelito3, abuelitoBYN3, abuelito_f3] = LeerImgByN('./entradas/abuelito3.jpg', nivel);
[abuelito4, abuelitoBYN4, abuelito_f4] = LeerImgByN('./entradas/abuelito4.jpg', nivel);

[xocoyote1, xocoyoteBYN1, xocoyote_f1] = LeerImgByN('./entradas/xocoyote1.jpg', nivel);
[xocoyote2, xocoyoteBYN2, xocoyote_f2] = LeerImgByN('./entradas/xocoyote2.jpg', nivel);
[xocoyote3, xocoyoteBYN3, xocoyote_f3] = LeerImgByN('./entradas/xocoyote3.jpg', nivel);
[xocoyote4, xocoyoteBYN4, xocoyote_f4] = LeerImgByN('./entradas/xocoyote4.jpg', nivel);

etiqueta = [1; 1; 1; 1];
caracteristicas = [murcielago_f1; murcielago_f2; murcielago_f3; murcielago_f4];
memoria = [caracteristicas etiqueta];

etiqueta = [2; 2; 2; 2];
caracteristicas = [abuelito_f1; abuelito_f2; abuelito_f3; abuelito_f4];
memoria = [memoria; caracteristicas etiqueta];

etiqueta = [3; 3; 3; 3];
caracteristicas = [xocoyote_f1; xocoyote_f2; xocoyote_f3; xocoyote_f4];
memoria = [memoria; caracteristicas etiqueta];

save('./salidas/memoria_palabras.mat');

% SepararLetras(xocoyoteBYN1);
