%
%    Part 2  Histogram
%

lena = imread('../pic/lena.jpg');
lenaColor = imread('../pic/lena_color.png');
lena2 = rgb2gray(lenaColor);

subplot(1,2,1), imhist(lena);
subplot(1,2,2), imhist(lena2);
