%--------------------------------------------
% Laboratório 5
% Aluno: Marcos Vinicius Ribeiro Silva
%--------------------------------------------

% Adicionando o path onde contêm as imagens
clc;
addpath('Images');


%--------------------------------------------
% Exercício 1
%--------------------------------------------

% Descreva o que ocorre aplicando o filtro F abaixo na figura
% Laboratorio_5_1.tif e descreva o resultado:

% Criando a figura para o exerício 1
title_figure = 'Exercicio 1';
figure('NumberTitle', 'off', 'Name', title_figure);

% Filtro a ser utilizado
F = [-1, -1, -1; -1, 8, -1; -1, -1, -1];

% Lendo a imagem original
img_orig = imread('Laboratorio_5_1.tif');

% Filtrando a imagem
img_filter = imfilter(img_orig, F);

% Imprimindo as imagens
subplot(1,2,1); imshow(img_orig); title('Imagem original');
subplot(1,2,2); imshow(img_filter); title('Imagem filtrada');

% Comentário
% Os filtros de realce com centros negativos e bordas positivas são
% utilizados para realçar regiões de interesse da imagem e remover
% bordas internas. Logo na aplicação desse filtro na imagem realizou
% o realce na imagem dos 3 pontos em cor de brando na imagem.