%
%    Part 3  Geometry
%

clear;
lena = imread('../pic/lena_color.png');

[width, height, dim] = size(lena);
%transform = maketform('affine', [-1 0 0; 0 1 0; 0 0 1; width 0 1]);
transform = affine2d([-1 0 0; 0 1 0; width 0 1]);
lena_mirror = imwarp(lena, transform);

transform = affine2d([1 0 0; 0 -1 0; 0 height 1]);
lena_flip = imwarp(lena, transform);

transform = affine2d([0 1 0; 1 0 0; 0 0 1]);
lena_transpose = imwarp(lena, transform);

subplot(2, 2, 1), imshow(lena);
subplot(2, 2, 2), imshow(lena_mirror);
subplot(2, 2, 3), imshow(lena_flip);
subplot(2, 2, 4), imshow(lena_transpose);