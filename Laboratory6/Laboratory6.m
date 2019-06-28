%----------------------------------)---------
% Laboratório 6
% Aluno: Marcos Vinicius Ribeiro Silva
%--------------------------------------------

% Adicionando o path onde contêm as imagens
clc;
addpath('Datasets');


%--------------------------------------------
% Exercício 1
%--------------------------------------------

% Dado os vetores x e y, calcule a distância euclidiana entre eles.

x = [53 23 43 55 02 13];
y = [53 23 44 55 0255 13];

euclidean_xy = dist_euclidean(x, y);
disp('Ex1. Distância euclidiana entre x e y: ' + string(euclidean_xy))


%--------------------------------------------
% Exercício 2
%--------------------------------------------

% Dado os vetores x e y, calcule a distância euclidiana entre eles.

z = [41 05 04 52 30 33; 09 39 37 49 43 41; 36 30 10 11 29 47;
     06 59 42 27 01 05; 01 19 46 06 16 02; 19 40 07 13 22 47;
     56 38 21 20 03 05; 53 17 38 04 47 37; 55 43 56 54 08 60;
     25 04 18 57 21 38];

euclidean_zx = dist_euclidean_matrix(z, x);
euclidean_zy = dist_euclidean_matrix(z, y);

% Imprimindo as maiores encludianas entre as linhas de z com x e y
max_zx = max(euclidean_zx);
max_zy = max(euclidean_zy);
disp('Ex2. Maior distância euclidiana entre z e x: ' + string(max_zx));
disp('Ex2. Maior distância euclidiana entre z e y: ' + string(max_zy));


%--------------------------------------------
% Exercício 3
%--------------------------------------------

% Utilize a função dada para carregar os dados de 10 vetores com 6
% características cada (10 x 6):

load Laboratorio_6_3_X.dat;
nx = numel(Laboratorio_6_3_X)/6;
X1 = reshape(Laboratorio_6_3_X,6,nx);
X = X1.';

% Calcule a distância euclidiana dos vetores, y1, y2 e y3 para cara
% linha do vetor X carregado e responda: Qual dos vetores (y1, y2 e y3)
% pertence ao vetor X carregado?

y1 = [09 43 37 49 41 39];
y2 = [53 17 38 04 47 37];
y3 = [25 05 19 57 20 38];

euclidean_Yy1 = dist_euclidean_matrix(X, y1);
euclidean_Yy2 = dist_euclidean_matrix(X, y2);
euclidean_Yy3 = dist_euclidean_matrix(X, y3);

if ismember(0, euclidean_Yy1)
    disp('Ex3. y1 existe em X')
elseif ismember(0, euclidean_Yy2)
    disp('Ex3. y2 existe em X')
elseif ismember(0, euclidean_Yy3)
    disp('Ex3. y3 existe em X')
else
    disp('Ex3. Nenhum vetor y existe em X')
end

% Resposta: y2 existe em X


%--------------------------------------------
% Exercício 4
%--------------------------------------------

% Repita a operação do exercício anterior, carregando o arquivo
% Laboratorio_6_3_Y.dat e responda se algum dos vetores y1, y2 ou y3
% pertence aos dados carregados.

load Laboratorio_6_3_Y.dat;
ny = numel(Laboratorio_6_3_Y)/6;
Y1 = reshape(Laboratorio_6_3_Y,6,ny);
Y = Y1.';

euclidean_Yy1 = dist_euclidean_matrix(Y, y1);
euclidean_Yy2 = dist_euclidean_matrix(Y, y2);
euclidean_Yy3 = dist_euclidean_matrix(Y, y3);

if ismember(0, euclidean_Yy1)
    disp('Ex4. y1 existe em Y')
elseif ismember(0, euclidean_Yy2)
    disp('Ex4. y2 existe em Y')
elseif ismember(0, euclidean_Yy3)
    disp('Ex4. y3 existe em Y')
else
    disp('Ex4. Nenhum vetor y existe em Y')
end


%--------------------------------------------
% Exercício 5
%--------------------------------------------

% Realize a importação dos arquivos Laboratorio_6_3_X.dat e
% Laboratorio_6_3_Y.dat para duas respectivas matrizes de 10 x 6
% e então calcule a distância euclidiana entre estas duas matrizes.

[mX, nX] = size(X);
[mY, nY] = size(Y);

d = [];
for NX = 1:mX
    for NY = 1:mY 
        aux = dist_euclidean(X(NX,:), Y(NY,:));
        message = 'Ex4. Distância euclidiana da linha ';
        message = string(message) + string(NX) + ' dos dados X, ';
        message = string(message) + 'com a linha ';
        message = string(message) + string(NY) + ' dos dados Y: ';
        message = string(message) + string(aux);
        disp(message);
    end
end


% Função para calcular distância euclidiana com matriz e vetor

function d = dist_euclidean_matrix(z, v)
    [m, n] = size(z);
    
    d = [];
    for N = 1:m
        aux = dist_euclidean(v, z(N,:));
        d = [d, aux];
    end
end

% Função para calcular distância euclidiana

function d = dist_euclidean(v1, v2)
    d = sqrt(sum((v1 - v2) .^ 2));
end