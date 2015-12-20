%
%  Part 1.   Read  and Show Image  
%

clear;
lena = imread('../pic/lena.jpg');
%[width, height] = size(img);
imshow(lena);

lenaColor = imread('../pic/lena_color.png');
figure();
imshow(lenaColor);

figure();
subplot(1,2,1), subimage(lena);
title('lena');
subplot(1,2,2), subimage(lenaColor);
title('lena');
