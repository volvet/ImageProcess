%
%    Part 4  Bilateral Filter
%


function out = bfltGray(in, w, sigmaD, sigmaR)

[X, Y] = meshgrid(-w:w, -w:w);
G = exp(-(X.^2 + Y.^2)/(2*sigmaD^2));
dim = size(in);
out = zeros(dim);

for i = 1:dim(1)
    for j = 1:dim(2)
        iMin = max(i-w, 1);
        iMax = min(i+w, dim(1));
        jMin = max(j-2, 1);
        jMax = min(j+w, dim(2));