%
%    Part 4  Bilateral Filter
%

function out = bilateral(in, w, sigmaD, sigmaR)
if size(in, 3) == 1 
    out = bFltGray(in, w, sigmaD, sigmaR);
else 
    out = bFltColor(in, w, sigmaD, sigmaR);
end


function out = bFltGray(in, w, sigmaD, sigmaR)

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
        I = in(iMin:iMax, jMin:jMax);
        H = exp(-(I-in(i,j)).^2/(2*sigmaR^2));
        
        F = H.*G((iMin:iMax)-i+w+1,(jMin:jMax)-j+w+1);
        out(i,j) = sum(F(:).*I(:))/sum(F(:));
    end
end

function out = bFltColor(in, w, sigmaD, sigmaR)

[X, Y] = meshgrid(-w:w, -w:w);
G = exp(-(X.^2 + Y.^2)/(2*sigmaD^2));

sigmaR = sigmaR * 3;

dim = size(in);
out = zeros(dim);
for i = 1:dim(1)
    for j = 1:dim(2)
        iMin = max(i-w, 1);
        iMax = min(i+w, dim(1));
        jMin = max(j-2, 1);
        jMax = min(j+w, dim(2));
        I = in(iMin:iMax, jMin:jMax, :);
        
        dR = I(:,:,1) - in(i,j,1);
        dG = I(:,:,2) - in(i,j,2);
        dB = I(:,:,3) - in(i,j,3);
        H = exp(-(dR.^2 + dG.^2 + dB.^2)/(2*sigmaR^2));
        F = H.*G((iMin:iMax)-i+w+1,(jMin:jMax)-j+w+1);
        norm = sum(F(:));
        out(i,j,1) = sum(sum(F.*in(i,j,1)))/norm;
        out(i,j,2) = sum(sum(F.*in(i,j,2)))/norm;
        out(i,j,3) = sum(sum(F.*in(i,j,3)))/norm;
    end
end




