clc;
clear all;
close all;

murcielago1 = imread('./entradas/murcielago1.jpg');
murcielago2 = imread('./entradas/murcielago2.jpg');
abuelito1 = imread('./entradas/abuelito1.jpg');
abuelito2 = imread('./entradas/abuelito2.jpg');
xocoyote1 = imread('./entradas/xocoyote1.jpg');
xocoyote2 = imread('./entradas/xocoyote2.jpg');

nivel = 0.5;
murcielagoBYN1 = im2bw(murcielago1, nivel);
murcielagoBYN2 = im2bw(murcielago2, nivel);
abuelitoBYN1 = im2bw(abuelito1, nivel);
abuelitoBYN2 = im2bw(abuelito2, nivel);
xocoyoteBYN1 = im2bw(xocoyote1, nivel);
xocoyoteBYN2 = im2bw(xocoyote2, nivel);

figure;
subplot(3, 2, 1);
imagesc(murcielagoBYN1);
subplot(3, 2, 2);
imagesc(murcielagoBYN2);
subplot(3, 2, 3);
imagesc(abuelitoBYN1);
subplot(3, 2, 4);
imagesc(abuelitoBYN2);
subplot(3, 2, 5);
imagesc(xocoyoteBYN1);
subplot(3, 2, 6);
imagesc(xocoyoteBYN2);
colormap(gray);

muricelago_f1 = Caracteristicas(murcielagoBYN1);
muricelago_f2 = Caracteristicas(murcielagoBYN2);
abuelito_f1 = Caracteristicas(abuelitoBYN1);
abuelito_f2 = Caracteristicas(abuelitoBYN2);
xocoyote_f1 = Caracteristicas(xocoyoteBYN1);
xocoyote_f2 = Caracteristicas(xocoyoteBYN2);

