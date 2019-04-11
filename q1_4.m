clear;clc;
im = uint8(imread('LAKE.tif'));
im = im(1:8,1:8);
% c = 2
figure(1);
im2 = utility(im,2);
subplot(1,2,1); imshow(im);
subplot(1,2,2); imshow(im2);
en2 = My_entropy(im2);
rm2 = RMSE(im,im2);

% c == 8
figure(2);
im8 = utility(im,8);
subplot(1,2,1); imshow(im);
subplot(1,2,2); imshow(im8);
en8 = My_entropy(im8);
rm8 = RMSE(im,im8);

% c == 10
figure(3);
im10 = utility(im,3);
subplot(1,2,1); imshow(im);
subplot(1,2,2); imshow(im10);
en10 = My_entropy(im10);
rm10 = RMSE(im,im10);

% c == 15
figure(4);
im15 = utility(im,15);
subplot(1,2,1); imshow(im);
subplot(1,2,2); imshow(im15);
en15 = My_entropy(im15);
rm15 = RMSE(im,im15);


function m = utility(X,c)
    mD = myDCT(double(X),create_mat_dct(8));
    Lum = [ [ 16,12,14,14,18,24,49,72]
            [ 11,12,13,17,22,35,64,92]
            [ 10,14,16,22,37,55,78,95]
            [ 16,19,24,29,56,64,87,98]
            [ 24,26,40,51,68,81,103,112]
            [ 40,58,57,87,109,104,121,100]
            [ 51,60,69,80,103,113,120,103]
            [ 61,55,56,62,77,92,101,99]]';
     qD = myDCT_quantization(mD,Lum,c);
     mm = myDCT_dequantization(qD,Lum,c);
     m =  uint8(myIDCT(mm,create_mat_dct(8))); 
end