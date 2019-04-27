%-----------  Exercício 1

%Carrega a imagem
img_ori = imread('Laboratorio_2_1.jpg');

%Cria figure para imprimir para imprimir o exercício 1
figure;

%Imprime histograma da imagem Laboratorio_2_1 (plot)
subplot(3,1,1);
plot(imhist(img_ori));
title('Histograma (plot) da Imagem Laboratorio-2-1.jpg');
ylabel('Quantidade de pixels')
xlabel('Tons de cinza')

%Imprime histograma da imagem Laboratorio_2_1 (stem)
subplot(3,1,2);
stem(imhist(img_ori));
title('Histograma (stem) da Imagem Laboratorio-2-1.jpg');
ylabel('Quantidade de pixels')
xlabel('Tons de cinza')

%Imprime histograma da imagem Laboratorio_2_1 (bar)
subplot(3,1,3);
bar(imhist(img_ori));
title('Histograma (bar) da Imagem Laboratorio-2-1.jpg');
ylabel('Quantidade de pixels')
xlabel('Tons de cinza')

%----------- Exercício 2

%Cria uma nova figura para imprimir
figure;

%Imprime a imagem ajustada em [0.4 0.5], []
subplot(2,2,1);
imshow(imadjust(img_ori, [0.4 0.5],[]));
title('Imagem ajustada em [0.4 0.5], [ ]');

%Imprime a imagem ajustada em [0 1], [1 0]
subplot(2,2,2);
imshow(imadjust(img_ori, [0 1], [1 0]));
title('Imagem ajustada em [0 1], [1 0]');

%Imprime a imagem ajustada em [0.5 0.75], [0 1]
subplot(2,2,3);
imshow(imadjust(img_ori, [0.5 0.75], [0 1]));
title('Imagem ajustada em [0.5 0.75], [0 1]');

%Imprime a imagem ajustada em [ ] [ ]
subplot(2,2,4);
imshow(imadjust(img_ori, [ ], [ ], 2));
title('Imagem ajustada em [ ], [ ]');

% Comentário:
% Para cada ajuste realizado na imagem, temos um realce diferente,
% logo fica muito interessante notar que cada imagem tem pontos
% importantes e que chamam atenção, mesmo todas derivando da imagem
% original, que vista pela primeira vez pode não aparecer ou não possuir
% nenhum aspecto relevante, mas quando realçada, fica evidente e mais
% claro estes pontos de interesse.

%----------- Exercício 3

%Carrega a imagem
img_ori = imread('Laboratorio_2_3.bmp');
img_equ = histeq(img_ori);

%Cria uma nova figura para imprimir
figure;

%Imprime a imagem original
subplot(2,2,1);
imshow(img_ori);
title('Imagem Original');

%Imprime histograma da imagem original
subplot(2,2,2);
plot(imhist(img_ori));
title('Histograma da Imagem Laboratorio-2-3.bmp');
ylabel('Quantidade de pixels')
xlabel('Tons de cinza')

%Imprime a imagem equalizada
subplot(2,2,3);
imshow(img_equ);
title('Imagem Equalizada');

%Imprime histograma da imagem equalizada
subplot(2,2,4);
plot(imhist(img_equ));
ylim('auto');
title('Histograma da Imagem Equalizada');
ylabel('Quantidade de pixels')
xlabel('Tons de cinza')

% Comentário:
% E evidente que com a imagem equalizada em níveis de cinza, possui um
% gráfico da quantidade de pixels por níveis de cinza mais harmonioso,
% Aparentemente na imagem, a imagem cria traços mais aparentes e deixa
% mais evidentes os pontos da imagem que são realmente diferentes,
% mesmo que na imagem original pareçam iguais.

%----------- Exercício 4

%Carregando imagem
g = imread('Laboratorio_2_3.bmp');

%Criando uma nova figura para imprimir
figure;

%Exibindo imagem carregada
imshow(g);

%Criando uma nova figura para imprimir
figure;

%Plotando o histograma da imagem carregada
imhist(g);

%Deixando os limites do gráfico automáticos
ylim('auto');

%Cria um vetor das faixas de cinza pela quantidade de pixels
hnorm = imhist(g)./numel(g);

%Retorna a soma do vetor
cdf = cumsum(hnorm);

%Retorna o espaço disponível para o gráfico
x = linspace(0, 1, 256);

%Criando uma nova figura para imprimir
figure;

%Plota o histograma o espaço disponível e todos valores possíveis
plot(x,cdf);

%Limita os eixos do gráfico
axis([0 1 0 1]);

%Especificando a propriedade do gráfico para mostrar
% os valores do eixo X quando o mouse é repousado
set(gca, 'xtick', 0:.2:1);

%Especificando a propriedade do gráfico para mostrar
% os valores do eixo Y quando o mouse é repousado
set(gca, 'ytick', 0:.2:1);

%Atribuindo o nome do eixo x e ajustando sua fonte
xlabel('Valores de Intensidade de Entrada', 'fontsize', 9);

%Atribuindo o nome do eixo y e ajustando sua fonte
ylabel('Valores de Intensidade de Saída', 'fontsize', 9);

%Atribuindo um label para um ponto específico do gráfico
text(0.18, 0.5, 'Funcao de Transfomacao', 'fontsize', 9);