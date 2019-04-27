%Carrega a imagem
img_ori = imread('Laboratorio_2_1.jpg');

%Create figure para imprimir
figure;

%Imprime histograma
subplot(1,1,1);
plot(imhist(img_gray));
title('Histograma da Imagem Laboratorio_2_1.jpg');
ylabel('teste')

