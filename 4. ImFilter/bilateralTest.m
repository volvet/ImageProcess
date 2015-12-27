
clear;
lena = imread('../pic/lena.jpg');
lena = double(lena);
w = 5;
sigmaD = 3;
sigmaR = 0.1;
out = bilateral(lena, w, sigmaD, sigmaR);
imshow(uint8(out));
