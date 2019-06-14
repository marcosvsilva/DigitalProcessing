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


%--------------------------------------------
% Exercício 2
%--------------------------------------------

% Explique cada linha do código abaixo aplicado na figura
% Laboratorio_5_2.bmp:

% Criando a figura para o exercício 2
title_figure = 'Exercicio 2';
figure('NumberTitle', 'off', 'Name', title_figure);

% Lendo a imagem Laboratorio_5_2.bmp
A = imread('Laboratorio_5_2.bmp');

% Convertendo a imagem original para uma imagem binária utilizando o
% limite global da imagem original em tons de cinza como fator de
% luminância inferior
B = im2bw(A, graythresh(A));

% Invertendo a imagem binária
C = ~B;

% Calculando e transformando a distância euclidiana da imagem binária
D = bwdist(C);

% Capturando as regiões de maior numero de pixels de luz como "bacias de
% água"
L = watershed(-D);

% Captura regiões onde L possui valor 0
w = L == 0;

% Cria uma nova imagem onde da binária original atribuindo os valores de
% da imagem binária ou da imagem de região de interesse com valor de L = 0
g2 = B | w;

% Imprimindo as etapas de todo processo
subplot(3,3,1); imshow(A);
subplot(3,3,2); imshow(B);
subplot(3,3,3); imshow(C);
subplot(3,3,4); imshow(D);
subplot(3,3,5); imshow(L);
subplot(3,3,6); imshow(2);
subplot(3,3,[7, 9]); imshow(g2);


%--------------------------------------------
% Exercício 3
%--------------------------------------------

% Explique cada linha do código abaixo aplicado na figura
% Laboratorio_5_3.bmp:

% Criando a figura para o exercício 3
title_figure = 'Exercicio 3';
figure('NumberTitle', 'off', 'Name', title_figure);

% Lendo a imagem Laboratorio_5_3.bmp
f = imread('Laboratorio_5_3.bmp');

% Capturando o histograma da imagem original
hf = imhist(f);

% (Adpatação para não criar várias imagens)
% Plota a imagem original
subplot(1,3,1); imshow(f); title('Imagem original');

% (Adpatação para não criar várias imagens)
% Plota o histograma
subplot(1,3,2); plot(hf); title('Histograma');

% Calculando uma "limiar" T1 que recebe o valor mínimo da imagem original
% e multiplica por meio e soma ao valor máximo da imagem original
T1 = 0.5 * (double(min(f(:))) + double(max(f(:))));

% Criando uma variável de controle para o laço de repetição
done = false;

% Laço de repetição
while ~done
    % Atribuindo a imagem g os valors de que são superiores ao limiar T1
    g = f >= T1;
    
    % Obetendo um novo limiar a partir da nova imagem de 6 que contém
    % agora a média de g multiplicado por 0.5 mais a imagem média da
    % imagem inversa de g
    T1next = 0.5 * (mean(f(g)) + mean(f(~g)));
    
    % Comparanando se a subtração absoluta de limiar T1 menos o novo
    % limiar T1next é menor que 0.5, caso seja o laço o interrompido
    done = abs(T1 - T1next) < 0.5;
    
    % Atribunido o novo limiar ao limiar antigo
    T1 = T1next;
end

% Atribuindo a T2 a divisão de T1 por 255
T2 = T1/255;

% Convertendo a imagem original para uma imagem binária utilizando o
% limite o limiar T2 calculado anteirormente como fator de luminância 
% inferior
s1 = im2bw(f,T2);

% (Adpatação para não criar várias imagens)
% Plota a imagem resultante do thresold realizado manualmente
subplot(1,3,3); imshow(s1); title('Imagem ');
