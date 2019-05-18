%--------------------------------------------
% Laboratório 3
% Aluno: Marcos Vinicius Ribeiro Silva
%--------------------------------------------

%--------------------------------------------
% Exercício 1
%--------------------------------------------

% Lendo a imagem original
img_ori = imread('Laboratorio_3_1.bmp');

% Dividindo a imagem nos canais RGB
img_red = img_ori(:,:,1);
img_green = img_ori(:,:,2);
img_blue = img_ori(:,:,3); 

% Imprimindo as imagens com somente uma corr
figure;
subplot(1,3,1); imshow(img_red);
subplot(1,3,2); imshow(img_green);
subplot(1,3,3); imshow(img_blue);

% Gerando uma nova imagem a partir das imagens de somente um canal, comparando
% comparando com as imagens originais

img_cat = cat(3, img_red, img_green, img_blue);

figure;
subplot(1,2,1); imshow(img_ori);
subplot(1,2,2); imshow(img_cat);

%--------------------------------------------
% Exercício 2
%--------------------------------------------

% Adaptando e executando algorítmo

% Lendo imagem original
RGB = imread('Laboratorio_3_2.png');

% Extrainto matrizes de ponteiros e matriz de cores da imagem
[X, map] = rgb2ind(RGB, 256); 

% Aproximando a imagem reduzindo o número de cores
[Y, newmap] = imapprox(X, map, 3);

figure;
subplot(1,2,1); imshow(X,map); title('matrizes originais');
subplot(1,2,2); imshow(X,map); title('novas matrizes');


% Comentário

% É perceptível quanto mais o parâmetro N se aproxima de 1, a imagem perde 
% detalhes, suas cores vão se 'juntando' perdendo a distinção de entre os 
% vários aspectos de cor, permanecendo somente os aspectos RGB.

%--------------------------------------------
% Exercício 3
%--------------------------------------------

% Carregando uma imagem
RGB = imread('Laboratorio_3_2.png');

% Convertendo a imagem para uma matriz de ponteiros e uma matriz de cores
[X,map] = rgb2ind(RGB, 256);

% Imprimindo as matrizes como imagem
figure;
imshow(X,map);

% Aproximando as cores em 10 quantizações (Variância mínima entre as cores)
% criando nova matriz de ponteiros e cores
[Y, newmap] = imapprox(X, map, 10);

% Imprimindo as novas matrizes como imagen
figure;
imshow(Y ,newmap);

% Convertendo as matrizes de vetores e cores em imagem em escala de cinza
GR = ind2gray(X,map); 

% Convertendo as matrizes de vetores e cores em imagem RGB
RGB2 = ind2rgb(X,map);

% Imprimindo a imagem em escala de cinza
figure;
imshow(GR);

% Imprimindo a imagem RGB
figure;
imshow(RGB2);

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
figure;
imshow(RGB);

% Imprimindo as matrizes de ponteiros e cores com pontilhamento
figure;
imshow(X1,map1); 

% Imprimindo as matrizes de ponteiros e cores sem pontilhamento
figure;
imshow(X2,map2);

% Imprimindo a imagem em escala de cinza com a resolução de cores aumentada
figure;
imshow(G1);

%--------------------------------------------
% Exercício 4
%--------------------------------------------

RGB = imread('Laboratorio_3_2.png');

[X, map] = rgb2ind(RGB, 256); 

figure;

% Formato original RGB.
subplot(2,4,1);
imshow(RGB);

% Formato NTSC
subplot(2,4,2);
img_ntsc = rgb2ntsc(RGB)
imshow(img_ntsc); 

% Canal de Luminancia do formato NTSC
subplot(2,4,3);
imshow(img_ntsc(:,:,1)); 

% Canal de Matiz do formato NTSC
subplot(2,4,4); 
imshow(img_ntsc(:,:,3)); 

% Canal de Saturação do formato NTSC 
subplot(2,4,5); 
imshow(img_ntsc(:,:,2)); 

% Formato YCbCr
subplot(2,4,6);
imshow(rgb2ycbcr(RGB)); 

% Formato HSV
subplot(2,4,7);
imshow(rgb2hsv(RGB));

% Formato CMY
subplot(2,4,8);
cmi_form = makecform('srgb2cmyk');
img_cmi = applycform(RGB, cmi_form); 
imshow(img_cmi);

%--------------------------------------------
% Exercício 5
%--------------------------------------------

RGB = imread('Laboratorio_3_2.png');

filter = [ 0 1 0; 1 1 1; 0 1 0]

% Exibir a imagem original no formato RGB
figure;
imshow(RGB);

% Filtre separadamente cada canal RGB utilizando o filtro e recomponha
% a imagem para exibir
R = RGB(:,:,1);
G = RGB(:,:,2);
B = RGB(:,:,3);

R_filter = imfilter(R, filter);
G_filter = imfilter(G, filter); 
B_filter = imfilter(B, filter);

RGB_filter = cat(3, R_filter, G_filter, B_filter);

figure;
imshow(RGB_filter);

# Filtre a imagem RGB sem a separação dos canais, utilizando W
RGB_filter = imfilter(RGB, filter);

figure;
imshow(RGB_filter);

% Filtre separadamente cada canal RGB utilizando um filtro de média de 15x15,
% re-componha a imagem para exibir
R = RGB(:,:,1);
G = RGB(:,:,2);
B = RGB(:,:,3);

R_filter = medfilt2(R,[15 15]);
G_filter = medfilt2(R,[15 15]);
B_filter = medfilt2(R,[15 15]);

RGB_filter = cat(3, R_filter, G_filter, B_filter);

figure;
imshow(RGB_filter);

% Exibir a imagem no formato HSV
imge_hsv = rgb2hsv(RGB_filter);

figure;
imshow(imge_hsv);

% Filtre separadamente cada canal HSV utilizando um filtro de média de 15x15,
% re-componha a imagem para exibir.
H = imge_hsv(:,:,1);
S = imge_hsv(:,:,2);
V = imge_hsv(:,:,3);

H_filter = medfilt2(H,[15 15]);
S_filter = medfilt2(S,[15 15]);
V_filter = medfilt2(V,[15 15]);

HSV_filter = cat(3, H_filter, S_filter, V_filter);

figure;
imshow(HSV_filter);

% Filtre separadamente cada canal RGB utilizando um filtro laplaciano,
% recomponha a imagem para exibir.
R = RGB(:,:,1);
G = RGB(:,:,2);
B = RGB(:,:,3);

filter = [-1 -1 -1; -1 8 -1; -1 -1 -1];

R_filter = imfilter(R, filter);
G_filter = imfilter(G, filter); 
B_filter = imfilter(B, filter);

RGB_filter = cat(3, R_filter, G_filter, B_filter);

figure;
imshow(RGB_filter);