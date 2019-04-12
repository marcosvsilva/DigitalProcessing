%Load Matrix%
matrix = readmatrix('ImageMatrix.txt');

%Convert matrix to gray image%
img_gray = mat2gray(matrix);

%Show gray image%
subplot(2,4,1);
imshow(img_gray);
title('original');

%Show gray image using parameter low high = [0 2]%
subplot(2,4,2);
imshow(img_gray, [0 2]);
title('low high = [0 2]');

%Show gray image using parameter low high = [0.3, 0.7]%
subplot(2,4,3);
imshow(img_gray, [0.3, 0.7]);
title('low high = [0.3, 0.7]');

%Show gray image using parameter low high = [ ]%
subplot(2,4,4);
imshow(img_gray, [ ]);
title('low high = [ ]');

%{
A Diferença foi que percebida onde os intervalos de máximo e mínimo de
exibição foram alterados, logo o parâmetro low high atuou como filtro
de frequência de cinza, deixando a imagem com o filtro de 0 a 2, quase
toda em tons pretos, deixando a imagem com filtro em 0.3 e 0.7 quase
preto e branco retirando muitos tons de cinza, e a imagem com o filtro
[ ] no aspecto original, pois o próprio matlab atribuiu os limites
máximos e mínimos da imagem, tendo novamente a imagem original.
%}

% Converts the grayscale image to uint8 
img_unit8 = im2uint8(img_gray);

%Show gray image%
subplot(2,4,5);
imshow(img_unit8);
title('original unit8');

%Show gray image using parameter low high = [0 2]%
subplot(2,4,6);
imshow(img_unit8, [0 2]);
title('unit8 low high = [0 2]');

%Show gray image using parameter low high = [0.3, 0.7]%
subplot(2,4,7);
imshow(img_unit8, [0.3, 0.7]);
title('unit8 low high = [0.3, 0.7]');

%Show gray image using parameter low high = [ ]%
subplot(2,4,8);
imshow(img_unit8, [ ]);
title('unit8 low high = [ ]');

%{
As imagens unit8 possuem menos aspectos quando comparadas a imagens
RGB e até mesmo nas imagens em escala de cinza, quando são aplicados
filtros nestas imagens elas praticamente se comportam como imagens
binárias, tendo nos exemplos demonstrados, se posicionado de forma
muito semelhantes quando aplicado qualquer nível de filtro ou
frequência de cor.
%}