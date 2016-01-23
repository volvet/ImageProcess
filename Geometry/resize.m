%
%    Part 3  Geometry
%

lena = imread('../pic/lena_color.png');
nearest = imresize(lena, 0.25, 'nearest');
bilinear = imresize(lena, 0.25, 'bilinear');
bicubic = imresize(lena, 0.25, 'bicubic');

imshow(lena);
figure();
imshow(nearest);
figure();
imshow(bilinear);
figure();
imshow(bicubic);