function en = My_entropy(im)
   [norm_counts,~] = imhist(im);
   norm_counts(norm_counts==0) = []; % removing zeroes
   en = -sum(norm_counts.*log2(norm_counts));
end