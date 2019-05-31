%--------------------------------------------
% Laboratório 3
% Aluno: Marcos Vinicius Ribeiro Silva
%--------------------------------------------

%--------------------------------------------
% Exercício 1
%--------------------------------------------

% Adicionando o path onde contêm as imagens
clc;
addpath('Images');

% Lendo a imagem original
img_ori = imread('Laboratorio_3_1.bmp');

% Criando imagem do exercício 1
title_figure = 'Exercicio 1';
figure('NumberTitle', 'off', 'Name', title_figure);

% Dividindo a imagem nos canais RGB
img_red = img_ori(:,:,1);
img_green = img_ori(:,:,2);
img_blue = img_ori(:,:,3); 

% Imprimindo as imagens com somente uma cor
subplot(2,3,1); imshow(img_red); title('Imagem canal vermelho');
subplot(2,3,2); imshow(img_green); title('Imagem canal verde');
subplot(2,3,3); imshow(img_blue); title('Imagem canal azul');

% Gerando uma nova imagem a partir das imagens de somente um canal,
% comparando com as imagens originais
img_cat = cat(3, img_red, img_green, img_blue);

subplot(2,3,4); imshow(img_ori); title('Imagem original');
subplot(2,3,6); imshow(img_cat); title('Imagem concatenada');
 
%--------------------------------------------
% Exercício 2
%--------------------------------------------

% Adaptando e executando algorítmo

% Criando imagem do exercício 2
title_figure = 'Exercicio 2';
figure('NumberTitle', 'off', 'Name', title_figure);

% Lendo imagem original
RGB = imread('Laboratorio_3_2.png');

% Extrainto matrizes de ponteiros e matriz de cores da imagem
[X, map] = rgb2ind(RGB, 256); 

% Aproximando a imagem reduzindo o número de cores
[Y, newmap] = imapprox(X, map, 3);

% Imprimindo a imagem em escala de cinza
subplot(1,2,1); imshow(X,map); title('matrizes originais');
subplot(1,2,2); imshow(X,map); title('novas matrizes');

% Comentário

% É perceptível quanto mais o parâmetro N se aproxima de 1, a imagem perde 
% detalhes, suas cores vão se 'juntando' perdendo a distinção de entre os 
% vários aspectos de cor, permanecendo somente os aspectos RGB.

%--------------------------------------------
% Exercício 3
%--------------------------------------------

% Adaptando o algoritmo para não criar várias janeleas

% Criando imagem do exercício 3
title_figure = 'Exercicio 3';
figure('NumberTitle', 'off', 'Name', title_figure);

% Carregando uma imagem
RGB = imread('Laboratorio_3_2.png');

% Convertendo a imagem para uma matriz de ponteiros e uma matriz de cores
[X,map] = rgb2ind(RGB, 256);

% Imprimindo as matrizes como imagem
subplot(2,4,1); imshow(X,map);

% Aproximando as cores em 10 quantizações (Variância mínima entre as cores)
% criando nova matriz de ponteiros e cores
[Y, newmap] = imapprox(X, map, 10);

% Imprimindo as novas matrizes como imagen
subplot(2,4,2); imshow(Y ,newmap);

% Convertendo as matrizes de vetores e cores em imagem em escala de cinza
GR = ind2gray(X,map); 

% Convertendo as matrizes de vetores e cores em imagem RGB
RGB2 = ind2rgb(X,map);

% Imprimindo a imagem em escala de cinza
subplot(2,4,3); imshow(GR);

% Imprimindo a imagem RGB
subplot(2,4,4); imshow(RGB2);

% Converte a imagem RGM em uma matriz de ponteiros e cores 
% quantizando 16 cores, e não utilizando o pontilhamento
% Pontilhamento (Dither) aumenta a resolução das cores por composição de cores
[X1, map1] = rgb2ind(RGB, 16, 'nodither');

% Converte a imagem RGM em uma matriz de ponteiros e cores 
% quantizando 16 cores, utilizando o pontilhamento
[X2, map2] = rgb2ind(RGB, 16, 'dither');

% Utilizando dither para aumentar a resolução das cores por composição de cores
G1 = dither(GR);

% Imprimindo a imagem RGB
subplot(2,4,5); imshow(RGB);

% Imprimindo aVc s matrizes de ponteiros e cores com pontilhamento
subplot(2,4,6); imshow(X1,map1); 

% Imprimindo as matrizes de ponteiros e cores sem pontilhamento
subplot(2,4,7); imshow(X2,map2);

% Imprimindo a imagem em escala de cinza com a resolução de cores aumentada
subplot(2,4,8); imshow(G1);

%--------------------------------------------
% Exercício 4
%--------------------------------------------

% Lendo a imagem original
RGB = imread('Laboratorio_3_2.png');

% Criando imagem do exercício 4
title_figure = 'Exercicio 4';
figure('NumberTitle', 'off', 'Name', title_figure);

% Convertendo a imagem original RGB em um vetor indexado
[X, map] = rgb2ind(RGB, 256); 

% Formato original RGB
subplot(2,4,1);
imshow(RGB); title('Formato original RGB');

% Formato NTSC
img_ntsc = rgb2ntsc(RGB);
subplot(2,4,2);
imshow(img_ntsc); title('Formato NTSC');

% Canal de Luminancia do formato NTSC
subplot(2,4,3);
imshow(img_ntsc(:,:,3)); title('Canal de Luminancia do NTSC');

% Canal de Matiz do formato NTSC
subplot(2,4,4); 
imshow(img_ntsc(:,:,1)); title('Canal de Matiz do NTSC');

% Canal de Saturação do formato NTSC 
subplot(2,4,5); 
imshow(img_ntsc(:,:,2)); title('Canal de Saturação do NTSC');

% Formato YCbCr
subplot(2,4,6);
imshow(rgb2ycbcr(RGB)); title('Formato YCbCr');

% Formato HSV
subplot(2,4,7);
imshow(rgb2hsv(RGB)); title('Formato HSV');

% Formato CMY
img = im2double(RGB);

R = img(:,:,1);
G = img(:,:,2);
B = img(:,:,3);

C = 1-R;
M = 1-G;
Y = 1-B;

img_cmy = cat(3, C, M, Y);
subplot(2,4,8);
imshow(img_cmy); title('Formato CMY');

%--------------------------------------------
% Exercício 5
%--------------------------------------------

RGB = imread('Laboratorio_3_2.png');

% Criando imagem do exercício 5
title_figure = 'Exercicio 5';
figure('NumberTitle', 'off', 'Name', title_figure);

% Filtro de cor
filter = [0 1 0; 1 1 1; 0 1 0];

% Exibir a imagem original no formato RGB
subplot(3,3,[1, 3]);
imshow(RGB); title('RGB');

% Filtre separadamente cada canal RGB utilizando o filtro e recomponha
% a imagem para exibir

% Separando os canais da imagem
R = RGB(:,:,1);
G = RGB(:,:,2);
B = RGB(:,:,3);

% Filtrando separadamente os canais da imagem com filtro
R_filter = imfilter(R, filter);
G_filter = imfilter(G, filter); 
B_filter = imfilter(B, filter);

% Criando a imagem filtrada
RGB_filter = cat(3, R_filter, G_filter, B_filter);

% Printando a imagem filtrada
subplot(3,3,4);
imshow(RGB_filter); title('RGB canais filtrados com filter');

% Filtre a imagem RGB sem a separação dos canais, utilizando W
RGB_filter = imfilter(RGB, filter);
subplot(3,3,5);
imshow(RGB_filter); title('RGB filtrada com filter');

% Filtre separadamente cada canal RGB utilizando um filtro de média
% de 15x15, re-componha a imagem para exibir

% Separando os canais da imagem
R = RGB(:,:,1);
G = RGB(:,:,2);
B = RGB(:,:,3);

% Filtrando separadamente os canais da imagem com filtro de média [15 15]
R_filter = medfilt2(R,[15 15]);
G_filter = medfilt2(R,[15 15]);
B_filter = medfilt2(R,[15 15]);

% Criando a imagem filtrada
RGB_filter = cat(3, R_filter, G_filter, B_filter);

% Printando a imagem filtrada
subplot(3,3,6);
imshow(RGB_filter); title('RGB canais filtrados com média [15 15]');

% Exibir a imagem no formato HSV
imge_hsv = rgb2hsv(RGB_filter);

subplot(3,3,7);
imshow(RGB_filter); title('Formato HSV');

% Filtre separadamente cada canal HSV utilizando um filtro de média
% de 15x15, re-componha a imagem para exibir.

% Separando os canais da imagem
H = imge_hsv(:,:,1);
S = imge_hsv(:,:,2);
V = imge_hsv(:,:,3);

% Filtrando separadamente os canais da imagem com filtro de média [15 15]
H_filter = medfilt2(H,[15 15]);
S_filter = medfilt2(S,[15 15]);
V_filter = medfilt2(V,[15 15]);

% Criando a imagem filtrada
HSV_filter = cat(3, H_filter, S_filter, V_filter);

% Printando a imagem filtrada
subplot(3,3,8);
imshow(HSV_filter); title('HSV canais filtrados com média [15 15]');

% Filtre separadamente cada canal RGB utilizando um filtro laplaciano,
% recomponha a imagem para exibir.

% Separando os canais da imagem
R = RGB(:,:,1);
G = RGB(:,:,2);
B = RGB(:,:,3);

% Filtro laplaciano
laplacian_filter = [-1 -1 -1; -1 8 -1; -1 -1 -1];

% Filtrando separadamente os canais da imagem com filtro laplaciano
R_filter = imfilter(R, laplacian_filter);
G_filter = imfilter(G, laplacian_filter); 
B_filter = imfilter(B, laplacian_filter);

% Criando a imagem filtrada
img_laplacian = cat(3, R_filter, G_filter, B_filter);

% Printando a imagem filtrada
subplot(3,3,9);
imshow(img_laplacian); title('Imagem RGB filtrada com filtro Laplaciano');