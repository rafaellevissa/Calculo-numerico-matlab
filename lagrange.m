function pz = lagrangev1(M, z) %(matriz(nx2) com os pontos (x,y), ponto a calcular)
    s=size(M); %tamanho da matriz [linha,coluna]
    n=s(1); %qtd de linhas
    di=1; %produto das linhas
    produtorio=1; %produto dos valores da diagonal principal
    soma=0; %soma dos yi/di
    for i=1:n %linha
        for j=1:(n+1) %coluna
            if i==j %diagonal principal
                L(i,j)=(z-M(i,1));
                produtorio = produtorio*L(i,j);
            else
                if j==(n+1)
                    L(i,j)=(M(i,2)/di);
                    soma=soma+L(i,j);
                else
                    L(i,j)=(M(i,1)-M(j,1));
                end
            end
            di = di*L(i,j);
        end
        di = 1; %para gerar um novo di a cada linha
    end
    pz=(produtorio*soma);
end
