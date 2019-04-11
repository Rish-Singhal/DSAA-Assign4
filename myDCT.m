function X = myDCT(Im, F) 
    %Im = double(rgb2gray(Im)); if it is coloured
    %Im = uint8(Im);
    X = F*Im*F.';
    %imshow(X)
end