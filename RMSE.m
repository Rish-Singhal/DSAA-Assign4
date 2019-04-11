function E = RMSE(im1, im2)
    [u,v,c] = size(im1);
    [uu,vv,cc] = size(im2);
    imm1 = zeros(max(u,uu),max(v,vv),max(c,cc));
    imm2 = zeros(max(u,uu),max(v,vv),max(c,cc));
    imm1(1:u,1:v,:) = im1;
    imm2(1:u,1:v,:) = im2;
    E = sqrt(mean2((imm1-imm2).^2));
end