clear;clc;
im = uint8(imread('LAKE.tif'));
im1 = im(420:427,45:52);
im2 = im(427:434, 298:305);
im3 = im(30:37,320:327);
figure(1);
utility(im1);
figure(2);
utility(im2);
figure(3);
utility(im3);

function m = utility(X)
    subplot(3,2,1), imshow(X);
    mD = myDCT(double(X),create_mat_dct(8));
    Lum = [ [ 16,12,14,14,18,24,49,72]
            [ 11,12,13,17,22,35,64,92]
            [ 10,14,16,22,37,55,78,95]
            [ 16,19,24,29,56,64,87,98]
            [ 24,26,40,51,68,81,103,112]
            [ 40,58,57,87,109,104,121,100]
            [ 51,60,69,80,103,113,120,103]
            [ 61,55,56,62,77,92,101,99]]';
     qD = myDCT_quantization(mD,Lum,2);
     mm = myDCT_dequantization(qD,Lum,2);
     m =  myIDCT(mm,create_mat_dct(8)); 
     subplot(3,2,2), imshow(mD);
     subplot(3,2,3), imshow(qD);
     subplot(3,2,4), imshow(mm);
     subplot(3,2,5), imshow(uint8(m));
end

