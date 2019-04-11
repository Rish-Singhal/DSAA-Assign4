clear;clc;
im = imread('LAKE.tif');
[r,c,d] = size(im);
C = zeros(r,c,d);

for X = 0:63
    for Y = 0:63
    C(8*X+1:8*X+8,8*Y+1:8*Y+8,:) = utility( im(8*X+1:8*X+8,8*Y+1:8*Y+8));
    end
end
subplot(1,2,1);
imshow(im);
subplot(1,2,2);
imshow(C);

function m = utility(X) 
    mD = myDCT(double(X),create_mat_dct(8));
    Lum = [ [ 16,12,14,14,18,24,49,72]
            [ 11,12,13,17,22,35,64,92]
            [ 10,14,16,22,37,55,78,95]
            [ 16,19,24,29,56,64,87,98]
            [ 24,26,40,51,68,81,103,112]
            [ 40,58,57,87,109,104,121,100]
            [ 51,60,69,80,103,113,120,103]
            [ 61,55,56,62,77,92,101,99]]';
     m = myDCT_quantization(mD,Lum,2);
end