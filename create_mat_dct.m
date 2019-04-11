function F = create_mat_dct(N)
    ind = 0:(N-1);
    [X,Y] = meshgrid(ind,ind);
    F = sqrt(2/N)*cos( (pi*(2.*X+1).*Y)/(2*N) );
    F(1,:) = F(1,:)/sqrt(2);
end