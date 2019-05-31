%--------------------------------------------
% Laboratório 4
% Aluno: Marcos Vinicius Ribeiro Silva
%--------------------------------------------

% Adicionando o path onde contêm as imagens
clc;
addpath('Images');

%--------------------------------------------
% Exercício 1
%--------------------------------------------

% Utilizando a imagem Laboratorio_4_1.tif, realizar a operação de
% dilatação pelo elemento estruturante apresentado por B

% Lendo a imagem original
img_ori = imread('Laboratorio_4_1.tif');

% Criando imagem do exercício 1
title_figure = 'Exercicio 1';
figure('NumberTitle', 'off', 'Name', title_figure);

% Criando elemento estruturante
structuring_element = [0 1 0; 1 1 1; 0 1 0];

% Dividindo a imagem nos canais RGB
img_dilate = imdilate(img_ori, structuring_element);

% Imprimindo a imagem original e a imagem dilatada
subplot(1,2,1); imshow(img_ori); title('Imagem original');
subplot(1,2,2); imshow(img_dilate); title('Imagem dilatada');
 
%--------------------------------------------
% Exercício 2
%--------------------------------------------

% Utilizando a imagem Laboratorio_4_2.png, realizar a operação de
% dilatação pelos seguintes elementos estruturantes:

% Lendo a imagem original
img_ori = imread('Laboratorio_4_2.png');

% Criando imagem do exercício 2
title_figure = 'Exercicio 2';
figure('NumberTitle', 'off', 'Name', title_figure);

% Exibindo a imagem original
subplot(2,4,1); imshow(img_ori); title('Imagem original');

% 1- Elemento tipo linha de tamanho 5 e angulação 0
structuring_element = strel('line', 5, 0);

img_dilate = imdilate(img_ori, structuring_element);

img_title = 'Dilatação por linha tamanho 5, angulação 0';
subplot(2,4,2); imshow(img_dilate); title(img_title);

% 2- Elemento tipo linha de tamanho 5 e angulação 45
structuring_element = strel('line', 5, 45);

img_dilate = imdilate(img_ori, structuring_element);

img_title = 'Dilatação por linha tamanho 5, angulação 45';
subplot(2,4,3); imshow(img_dilate); title(img_title);

% 3- Elemento tipo linha de tamanho 11 e angulação 0
structuring_element = strel('line', 11, 0);

img_dilate = imdilate(img_ori, structuring_element);

img_title = 'Dilatação por linha tamanho 11, angulação 0';
subplot(2,4,4); imshow(img_dilate); title(img_title);

% 4- Elemento tipo linha de tamanho 11 e angulação 45
structuring_element = strel('line', 11, 45);

img_dilate = imdilate(img_ori, structuring_element);

img_title = 'Dilatação por linha tamanho 11, angulação 45';
subplot(2,4,5); imshow(img_dilate); title(img_title);

% 5- Elemento tipo diamante de tamanho 1
structuring_element = strel('diamond', 1);

img_dilate = imdilate(img_ori, structuring_element);

img_title = 'Dilatação por diamante tamanho 1';
subplot(2,4,6); imshow(img_dilate); title(img_title);

% 6- Elemento tipo diamante de tamanho 5
structuring_element = strel('diamond', 5);

img_dilate = imdilate(img_ori, structuring_element);

img_title = 'Dilatação por diamante tamanho 5';
subplot(2,4,7); imshow(img_dilate); title(img_title);

% 7- Elemento tipo diamante de tamanho 11
structuring_element = strel('diamond', 11);

img_dilate = imdilate(img_ori, structuring_element);

img_title = 'Dilatação por diamante tamanho 11';
subplot(2,4,8); imshow(img_dilate); title(img_title);

%--------------------------------------------
% Exercício 3
%--------------------------------------------

% Utilizando a imagem Laboratorio_4_3.png, realizar a operação
% de erosão por elementos estruturantes do tipo disco.
% Variar o tamanho do elemento estruturante de 1 a 11
% e observar os resultados.

% Lendo a imagem original
img_ori = imread('Laboratorio_4_3.png');

% Criando imagem do exercício 3
title_figure = 'Exercicio 3';
figure('NumberTitle', 'off', 'Name', title_figure);

% Exibindo a imagem original
subplot(3,4,1); imshow(img_ori); title('Imagem original');

% 1- Elemento tipo disco de tamanho 1
structuring_element = strel('disk', 1);

img_erode = imerode(img_ori, structuring_element);

img_title = 'Erosão por disco tamanho 1';
subplot(3,4,2); imshow(img_erode); title(img_title);

% 2- Elemento tipo disco de tamanho 2
structuring_element = strel('disk', 2);

img_erode = imerode(img_ori, structuring_element);

img_title = 'Erosão por disco tamanho 2';
subplot(3,4,3); imshow(img_erode); title(img_title);

% 3- Elemento tipo disco de tamanho 3
structuring_element = strel('disk', 3);

img_erode = imerode(img_ori, structuring_element);

img_title = 'Erosão por disco tamanho 3';
subplot(3,4,4); imshow(img_erode); title(img_title);

% 4- Elemento tipo disco de tamanho 4
structuring_element = strel('disk', 4);

img_erode = imerode(img_ori, structuring_element);

img_title = 'Erosão por disco tamanho 4';
subplot(3,4,5); imshow(img_erode); title(img_title);

% 5- Elemento tipo disco de tamanho 5
structuring_element = strel('disk', 5);

img_erode = imerode(img_ori, structuring_element);

img_title = 'Erosão por disco tamanho 5';
subplot(3,4,6); imshow(img_erode); title(img_title);

% 6- Elemento tipo disco de tamanho 6
structuring_element = strel('disk', 6);

img_erode = imerode(img_ori, structuring_element);

img_title = 'Erosão por disco tamanho 6';
subplot(3,4,7); imshow(img_erode); title(img_title);

% 7- Elemento tipo disco de tamanho 7
structuring_element = strel('disk', 7);

img_erode = imerode(img_ori, structuring_element);

img_title = 'Erosão por disco tamanho 7';
subplot(3,4,8); imshow(img_erode); title(img_title);

% 8- Elemento tipo disco de tamanho 8
structuring_element = strel('disk', 8);

img_erode = imerode(img_ori, structuring_element);

img_title = 'Erosão por disco tamanho 8';
subplot(3,4,9); imshow(img_erode); title(img_title);

% 9- Elemento tipo disco de tamanho 9
structuring_element = strel('disk', 9);

img_erode = imerode(img_ori, structuring_element);

img_title = 'Erosão por disco tamanho 9';
subplot(3,4,10); imshow(img_erode); title(img_title);

% 10- Elemento tipo disco de tamanho 10
structuring_element = strel('disk', 10);

img_erode = imerode(img_ori, structuring_element);

img_title = 'Erosão por disco tamanho 10';
subplot(3,4,11); imshow(img_erode); title(img_title);

% 11- Elemento tipo disco de tamanho 11
structuring_element = strel('disk', 11);

img_erode = imerode(img_ori, structuring_element);

img_title = 'Erosão por disco tamanho 11';
subplot(3,4,12); imshow(img_erode); title(img_title);

% Comentário

% Foi verificado que com o aumento progressivo da dimensão do disco
% de erosão, que a área em branco da figura original tende a diminuir,
% logo, para estreitar traços ou contornos as erosões com dimensão
% maiores são mais indicados, e para efeitos menores, dimensões menores
% são mais indicados, vale ressaltar que a dimensão da imagem original
% impacta no quão grande deve ser a dimensão do disco.

%--------------------------------------------
% Exercício 4
%--------------------------------------------

% Utilizando a imagem Laboratorio_4_4.tif, realizar a operação de
% abertura e fechamento com um elemento estruturante do tipo quadrado.
% Variar o tamanho do elemento estruturante de 5 a 15 e
% observar os resultados.
% Alterar o elemento estruturante para tipo disco.
% Variar o tamanho do elemento estruturante de 5 a 15 e
% observar os resultados.

% Lendo a imagem original e convertendo em binária
img_ori = imread('Laboratorio_4_4.tif');

% Criando imagem do exercício 4 - Abertura e Fechamento Quadrado de 5 a 8
title_figure = 'Exercicio 4 - Abertura e Fechamento Quadrado de 5 a 8';
figure('NumberTitle', 'off', 'Name', title_figure);

% Exibindo a imagem original
subplot(3,5,[1 5]); imshow(img_ori); title('Imagem original');

% 1- Elemento tipo quadrado de tamanho 5
structuring_element = strel('square', 5);

img_open = imopen(img_ori, structuring_element);
img_close = imclose(img_ori, structuring_element);

img_title = 'Abertura por quadrado 5';
subplot(3,5,6); imshow(img_open); title(img_title);
img_title = 'Fechamento por quadrado 5';
subplot(3,5,7); imshow(img_close); title(img_title);

% 2- Elemento tipo quadrado de tamanho 6
structuring_element = strel('square', 6);

img_open = imopen(img_ori, structuring_element);
img_close = imclose(img_ori, structuring_element);

img_title = 'Abertura quadrado 6';
subplot(3,5,9); imshow(img_open); title(img_title);
img_title = 'Fechamento quadrado 6';
subplot(3,5,10); imshow(img_close); title(img_title);

% 3- Elemento tipo quadrado de tamanho 7
structuring_element = strel('square', 7);

img_open = imopen(img_ori, structuring_element);
img_close = imclose(img_ori, structuring_element);

img_title = 'Abertura quadrado 7';
subplot(3,5,11); imshow(img_open); title(img_title);
img_title = 'Fechamento quadrado 7';
subplot(3,5,12); imshow(img_close); title(img_title);

% 4- Elemento tipo quadrado de tamanho 8
structuring_element = strel('square', 8);

img_open = imopen(img_ori, structuring_element);
img_close = imclose(img_ori, structuring_element);

img_title = 'Abertura quadrado 8';
subplot(3,5,14); imshow(img_open); title(img_title);
img_title = 'Fechamento quadrado 8';
subplot(3,5,15); imshow(img_close); title(img_title);

% Criando imagem do exercício 4 - Abertura e Fechamento Quadrado de 9 a 12
title_figure = 'Exercicio 4 - Abertura e Fechamento Quadrado de 9 a 12';
figure('NumberTitle', 'off', 'Name', title_figure);

% Exibindo a imagem original
subplot(3,5,[1 5]); imshow(img_ori); title('Imagem original');

% 5- Elemento tipo quadrado de tamanho 9
structuring_element = strel('square', 9);

img_open = imopen(img_ori, structuring_element);
img_close = imclose(img_ori, structuring_element);

img_title = 'Abertura quadrado 9';
subplot(3,5,6); imshow(img_open); title(img_title);
img_title = 'Fechamento quadrado 9';
subplot(3,5,7); imshow(img_close); title(img_title);

% 6- Elemento tipo quadrado de tamanho 10
structuring_element = strel('square', 10);

img_open = imopen(img_ori, structuring_element);
img_close = imclose(img_ori, structuring_element);

img_title = 'Abertura quadrado 10';
subplot(3,5,9); imshow(img_open); title(img_title);
img_title = 'Fechamento quadrado 10';
subplot(3,5,10); imshow(img_close); title(img_title);

% 7- Elemento tipo quadrado de tamanho 11
structuring_element = strel('square', 11);

img_open = imopen(img_ori, structuring_element);
img_close = imclose(img_ori, structuring_element);

img_title = 'Abertura quadrado 11';
subplot(3,5,11); imshow(img_open); title(img_title);
img_title = 'Fechamento quadrado 11';
subplot(3,5,12); imshow(img_close); title(img_title);

% 8- Elemento tipo quadrado de tamanho 12
structuring_element = strel('square', 12);

img_open = imopen(img_ori, structuring_element);
img_close = imclose(img_ori, structuring_element);

img_title = 'Abertura quadrado 12';
subplot(3,5,14); imshow(img_open); title(img_title);
img_title = 'Fechamento quadrado 12';
subplot(3,5,15); imshow(img_close); title(img_title);

% Criando imagem do exercício 4 - Abertura e Fechamento Quadrado de 13 a 16
title_figure = 'Exercicio 4 - Abertura e Fechamento Quadrado de 13 a 16';
figure('NumberTitle', 'off', 'Name', title_figure);

% Exibindo a imagem original
subplot(3,5,[1 5]); imshow(img_ori); title('Imagem original');

% 9- Elemento tipo quadrado de tamanho 13
structuring_element = strel('square', 13);

img_open = imopen(img_ori, structuring_element);
img_close = imclose(img_ori, structuring_element);

img_title = 'Abertura quadrado 13';
subplot(3,5,6); imshow(img_open); title(img_title);
img_title = 'Fechamento quadrado 13';
subplot(3,5,7); imshow(img_close); title(img_title);

% 10- Elemento tipo quadrado de tamanho 14
structuring_element = strel('square', 14);

img_open = imopen(img_ori, structuring_element);
img_close = imclose(img_ori, structuring_element);

img_title = 'Abertura quadrado 14';
subplot(3,5,9); imshow(img_open); title(img_title);
img_title = 'Fechamento quadrado 14';
subplot(3,5,10); imshow(img_close); title(img_title);

% 11- Elemento tipo quadrado de tamanho 15
structuring_element = strel('square', 15);

img_open = imopen(img_ori, structuring_element);
img_close = imclose(img_ori, structuring_element);

img_title = 'Abertura quadrado 15';
subplot(3,5,11); imshow(img_open); title(img_title);
img_title = 'Fechamento quadrado 15';
subplot(3,5,12); imshow(img_close); title(img_title);

% 11- Elemento tipo quadrado de tamanho 16
structuring_element = strel('square', 16);

img_open = imopen(img_ori, structuring_element);
img_close = imclose(img_ori, structuring_element);

img_title = 'Abertura quadrado 16';
subplot(3,5,14); imshow(img_open); title(img_title);
img_title = 'Fechamento quadrado 16';
subplot(3,5,15); imshow(img_close); title(img_title);

% Alterando o elemento estruturante para disco

% Criando imagem do exercício 4 - Abertura e Fechamento Disco de 5 a 8
title_figure = 'Exercicio 4 - Abertura e Fechamento Disco de 5 a 8';
figure('NumberTitle', 'off', 'Name', title_figure);

% Exibindo a imagem original
subplot(3,5,[1 5]); imshow(img_ori); title('Imagem original');

% 1- Elemento tipo Disco de tamanho 5
structuring_element = strel('disk', 5);

img_open = imopen(img_ori, structuring_element);
img_close = imclose(img_ori, structuring_element);

img_title = 'Abertura por Disco 5';
subplot(3,5,6); imshow(img_open); title(img_title);
img_title = 'Fechamento por Disco 5';
subplot(3,5,7); imshow(img_close); title(img_title);

% 2- Elemento tipo Disco de tamanho 6
structuring_element = strel('disk', 6);

img_open = imopen(img_ori, structuring_element);
img_close = imclose(img_ori, structuring_element);

img_title = 'Abertura Disco 6';
subplot(3,5,9); imshow(img_open); title(img_title);
img_title = 'Fechamento Disco 6';
subplot(3,5,10); imshow(img_close); title(img_title);

% 3- Elemento tipo Disco de tamanho 7
structuring_element = strel('disk', 7);

img_open = imopen(img_ori, structuring_element);
img_close = imclose(img_ori, structuring_element);

img_title = 'Abertura Disco 7';
subplot(3,5,11); imshow(img_open); title(img_title);
img_title = 'Fechamento Disco 7';
subplot(3,5,12); imshow(img_close); title(img_title);

% 4- Elemento tipo Disco de tamanho 8
structuring_element = strel('disk', 8);

img_open = imopen(img_ori, structuring_element);
img_close = imclose(img_ori, structuring_element);

img_title = 'Abertura Disco 8';
subplot(3,5,14); imshow(img_open); title(img_title);
img_title = 'Fechamento Disco 8';
subplot(3,5,15); imshow(img_close); title(img_title);

% Criando imagem do exercício 4 - Abertura e Fechamento Disco de 9 a 12
title_figure = 'Exercicio 4 - Abertura e Fechamento Disco de 9 a 12';
figure('NumberTitle', 'off', 'Name', title_figure);

% Exibindo a imagem original
subplot(3,5,[1 5]); imshow(img_ori); title('Imagem original');

% 5- Elemento tipo Disco de tamanho 9
structuring_element = strel('disk', 9);

img_open = imopen(img_ori, structuring_element);
img_close = imclose(img_ori, structuring_element);

img_title = 'Abertura Disco 9';
subplot(3,5,6); imshow(img_open); title(img_title);
img_title = 'Fechamento Disco 9';
subplot(3,5,7); imshow(img_close); title(img_title);

% 6- Elemento tipo Disco de tamanho 10
structuring_element = strel('disk', 10);

img_open = imopen(img_ori, structuring_element);
img_close = imclose(img_ori, structuring_element);

img_title = 'Abertura Disco 10';
subplot(3,5,9); imshow(img_open); title(img_title);
img_title = 'Fechamento Disco 10';
subplot(3,5,10); imshow(img_close); title(img_title);

% 7- Elemento tipo Disco de tamanho 11
structuring_element = strel('disk', 11);

img_open = imopen(img_ori, structuring_element);
img_close = imclose(img_ori, structuring_element);

img_title = 'Abertura Disco 11';
subplot(3,5,11); imshow(img_open); title(img_title);
img_title = 'Fechamento Disco 11';
subplot(3,5,12); imshow(img_close); title(img_title);

% 8- Elemento tipo Disco de tamanho 12
structuring_element = strel('disk', 12);

img_open = imopen(img_ori, structuring_element);
img_close = imclose(img_ori, structuring_element);

img_title = 'Abertura Disco 12';
subplot(3,5,14); imshow(img_open); title(img_title);
img_title = 'Fechamento Disco 12';
subplot(3,5,15); imshow(img_close); title(img_title);

% Criando imagem do exercício 4 - Abertura e Fechamento Disco de 13 a 16
title_figure = 'Exercicio 4 - Abertura e Fechamento Disco de 13 a 16';
figure('NumberTitle', 'off', 'Name', title_figure);

% Exibindo a imagem original
subplot(3,5,[1 5]); imshow(img_ori); title('Imagem original');

% 9- Elemento tipo Disco de tamanho 13
structuring_element = strel('disk', 13);

img_open = imopen(img_ori, structuring_element);
img_close = imclose(img_ori, structuring_element);

img_title = 'Abertura Disco 13';
subplot(3,5,6); imshow(img_open); title(img_title);
img_title = 'Fechamento Disco 13';
subplot(3,5,7); imshow(img_close); title(img_title);

% 10- Elemento tipo Disco de tamanho 14
structuring_element = strel('disk', 14);

img_open = imopen(img_ori, structuring_element);
img_close = imclose(img_ori, structuring_element);

img_title = 'Abertura Disco 14';
subplot(3,5,9); imshow(img_open); title(img_title);
img_title = 'Fechamento Disco 14';
subplot(3,5,10); imshow(img_close); title(img_title);

% 11- Elemento tipo Disco de tamanho 15
structuring_element = strel('disk', 15);

img_open = imopen(img_ori, structuring_element);
img_close = imclose(img_ori, structuring_element);

img_title = 'Abertura Disco 15';
subplot(3,5,11); imshow(img_open); title(img_title);
img_title = 'Fechamento Disco 15';
subplot(3,5,12); imshow(img_close); title(img_title);

% 11- Elemento tipo Disco de tamanho 16
structuring_element = strel('disk', 16);

img_open = imopen(img_ori, structuring_element);
img_close = imclose(img_ori, structuring_element);

img_title = 'Abertura Disco 16';
subplot(3,5,14); imshow(img_open); title(img_title);
img_title = 'Fechamento Disco 16';
subplot(3,5,15); imshow(img_close); title(img_title);