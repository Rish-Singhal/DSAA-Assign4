function imqDCT = myDCT_quantization(imDCT,qm,c)
    %imqDCT =round( (imDCT*(qm^(-1)))/c );
    imqDCT =round(imDCT./(c*qm));
    %imqDCT = floor(2*imqDCT) - floor(imqDCT);
end
