function X = myIDCT(Im,F)
    % if coloured
    %Im = double(Im);
    X = F.'*Im*F;
    %imshow(X)
end