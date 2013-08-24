%Rafael Levi Batista Costa
%MAT174 - Cálculo Numérico
%Método da secante
function s = secante2(f,a,b,e,l)%(funcao, ponto a, ponto b, erro)
    %clc; %clear console
    i=0;%contador de iteracoes
    while abs(a-b)>e & i<=l %so sai quando a reposta estiver dentro do erro ou ultrapassar o l
        i=i+1;
        c=b;
        b=(f(b)*a-f(a)*b)/(f(b)-f(a));
        a=c;
    end
    if i>l
        s='não atingiu exatidão em l interações';
    end
    s=b;
end    
