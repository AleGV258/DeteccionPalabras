clc;
clear all;
close all;

murcielago1 = imread('./entradas/murcielago1.jpg');
murcielago2 = imread('./entradas/murcielago2.jpg');
murcielago3 = imread('./entradas/murcielago3.jpg');
murcielago4 = imread('./entradas/murcielago4.jpg');

abuelito1 = imread('./entradas/abuelito1.jpg');
abuelito2 = imread('./entradas/abuelito2.jpg');
abuelito3 = imread('./entradas/abuelito3.jpg');
abuelito4 = imread('./entradas/abuelito4.jpg');

xocoyote1 = imread('./entradas/xocoyote1.jpg');
xocoyote2 = imread('./entradas/xocoyote2.jpg');
xocoyote3 = imread('./entradas/xocoyote3.jpg');
xocoyote4 = imread('./entradas/xocoyote4.jpg');

nivel = 0.5;
murcielagoBYN1 = im2bw(murcielago1, nivel);
murcielagoBYN2 = im2bw(murcielago2, nivel);
murcielagoBYN3 = im2bw(murcielago3, 0.3);
murcielagoBYN4 = im2bw(murcielago4, 0.3);

abuelitoBYN1 = im2bw(abuelito1, nivel);
abuelitoBYN2 = im2bw(abuelito2, nivel);
abuelitoBYN3 = im2bw(abuelito3, 0.3);
abuelitoBYN4 = im2bw(abuelito4, 0.3);

xocoyoteBYN1 = im2bw(xocoyote1, nivel);
xocoyoteBYN2 = im2bw(xocoyote2, nivel);
xocoyoteBYN3 = im2bw(xocoyote3, 0.3);
xocoyoteBYN4 = im2bw(xocoyote4, 0.3);

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

figure;
subplot(3, 2, 1);
imagesc(murcielagoBYN3);
subplot(3, 2, 2);
imagesc(murcielagoBYN4);
subplot(3, 2, 3);
imagesc(abuelitoBYN3);
subplot(3, 2, 4);
imagesc(abuelitoBYN4);
subplot(3, 2, 5);
imagesc(xocoyoteBYN3);
subplot(3, 2, 6);
imagesc(xocoyoteBYN4);
colormap(gray);

muricelago_f1 = Caracteristicas(murcielagoBYN1);
muricelago_f2 = Caracteristicas(murcielagoBYN2);
muricelago_f3 = Caracteristicas(murcielagoBYN1);
muricelago_f4 = Caracteristicas(murcielagoBYN4);

abuelito_f1 = Caracteristicas(abuelitoBYN1);
abuelito_f2 = Caracteristicas(abuelitoBYN2);
abuelito_f3 = Caracteristicas(abuelitoBYN3);
abuelito_f4 = Caracteristicas(abuelitoBYN4);

xocoyote_f1 = Caracteristicas(xocoyoteBYN1);
xocoyote_f2 = Caracteristicas(xocoyoteBYN2);
xocoyote_f3 = Caracteristicas(xocoyoteBYN3);
xocoyote_f4 = Caracteristicas(xocoyoteBYN4);

prueba = SepararLetras(xocoyoteBYN1);
