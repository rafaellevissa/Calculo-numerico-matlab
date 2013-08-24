%Rafael Levi Batista Costa
%MAT174 - Cálculo Numérico
%Método de newton
function n = newton(f,df,x0,e,l)%(funcao,derivada da função, ponto inicial, erro, no de passos)
    %clc; %clear console
    i=0; %contador de iteracoes
    x1= x0-((f(x0))/(df(x0)));
    while abs(x0-x1) > e & i<=l %so sai quando a reposta estiver dentro do erro ou ultrapassar o l
        x0=x1;
        i=i+1;
        x1 = x0-((f(x0))/(df(x0)));
    end
    if i>l
        n='não atingiu exatidão em l interações';
    end
    n=x1;
end
