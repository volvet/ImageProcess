%
%    Part 2  Histogram
%
clear;
lena = imread('../pic/lena_color.png');
%imshow(lena);
%figure();
%lena = rgb2gray(lena);
%lenaColor = imread('../pic/lena_color.png');
%[counts, xs] = imhist(lena);

[width, height, components] = size(lena);
subplot(2,2,1), imshow(lena);
title('original image');

r = lena;
r(:,:,2) = zeros(width,height);
r(:,:,3) = zeros(width,height);
r = uint8(r);
subplot(2,2,2), imshow(r);
title('red component');

g = lena;
g(:,:,1) = zeros(width,height);
g(:,:,3) = zeros(width,height);
g = uint8(g);
subplot(2,2,3), imshow(g);
title('green component');

b = lena;
b(:,:,1) = zeros(width,height);
b(:,:,2) = zeros(width,height);
b = uint8(b);
subplot(2,2,4), imshow(b);
title('blue component');

figure();
gray = rgb2gray(lena);
r = lena(:,:,1);
g = lena(:,:,2);
b = lena(:,:,3);
subplot(1,4,1), imhist(gray), title('gray');
subplot(1,4,2), imhist(r), title('r');
subplot(1,4,3), imhist(g), title('g');
subplot(1,4,4), imhist(b), title('b');

figure();
eqGray = histeq(gray);
adaptiveEqGray = adapthisteq(gray);

subplot(1,3,1), imshow(gray), title('gray');
subplot(1,3,2), imshow(eqGray), title('EqGray');
subplot(1,3,3), imshow(adaptiveEqGray), title('CLAHE');




