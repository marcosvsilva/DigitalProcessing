% Função por segmentação de região de crescimento
% (Necessário adaptações)

function [g, NR, SI, TI] = Laboratorio_5_4b(f,S,T)

% Convertendo todos os valores da matriz em pontos flutuantes de dupla
% precião
f=double(f);

if numel(S)==1
    % Se S é escalar obter a imagem da semente
    SI = f == S;
    S1 = S;
else
    % Se S é uma matriz, eliminar as sementes duplicadas e conectadas para
    % diminuir o número de execuções do loop
    SI = bwmorph(S, 'shrink',Inf);
    J = find(SI);
    
    % Array de sementes
    S1 = f(J)
end

% Cria um vetor falso do tamanho do vetor de sementes
TI=false(size(f));

% Para cada semente o valor do limiar é testado e se caso seja superior é
% o valor de TI é setado pra verdadeiro
for K = 1:length(S1)
    seedvalue=S1(K);
    S=abs(f - seedvalue) <= T;
    TI = TI|S;
end

% Usando a função imreconstruct como a imagem do marcador para oter as
% regiões correspondetes a cada semente em S. A funcão bwlabel atribui um
% inteiro diferente a cada região conectada.
[g, NH] = bwlabel(imreconstruct(SI, TI));