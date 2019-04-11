function imDCT = myDCT_dequantization(imqDCT, qm, c)
    imDCT = imqDCT.*(c*qm);
end