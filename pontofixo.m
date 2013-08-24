%Rafael Levi Batista Costa
%MAT174 - Cálculo Numérico
%Método de Ponto Fixo
function p = pfixo(f,x0,e,l)%(funcao, ponto inicial, erro, n de iteracoes)
    %clc; %clear console
    i=0; %contador de iteracoes
    x1 = f(x0);
    while abs(x0-x1) > e & i<=l %so sai quando a reposta estiver dentro do erro ou ultrapassar o l
        i=i+1;
        x0=x1;
        x1 = f(x0);
    end
    if i>l
        p='não atingiu exatidão em l interações';
    end
    p=x1;
end
