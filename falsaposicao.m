%Rafael Levi Batista Costa
%MAT174 - Cálculo Numérico
%Método de falsa posição
function r = fposi(f,a,b,e)%(funcao, ponto a, ponto b, erro)
    %clc; %clear console
    l=ceil(log((b-a)/e)/log(2)); %numero de passos maximo
    if f(b)*f(a)>0
        x='provavelmente não há raiz no intervalo';
    else
        i=0;%contador de iteracoes
        x = (a*f(b) - b*f(a))/(f(b)-f(a));  %primeiro ponto medio
        while abs(a-b)>e & i<=l %so sai quando a reposta estiver dentro do erro ou ultrapassar o l
            if f(x) == 0 %se x for a raiz
                r=x;
                return
            end     
            if f(x)*f(a)>0 % a(+) e b(+) ou a(-) e b(-)
                a=x;
            else
                b=x;
            end
            x = (a*f(b) - b*f(a))/(f(b)-f(a));
            i=i+1;
        end
        if i>l
            x='não atingiu exatidão em l interações';
        end
    end
    r=x;
end
