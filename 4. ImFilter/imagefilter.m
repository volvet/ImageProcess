%
%    Part 4  ImFilter
%

lena = imread('../pic/lena_color.png');

h1 = fspecial('average', [3 3]);
h2 = fspecial('average', [5 5]);
h3 = fspecial('average', [7 7]);

im1 = imfilter(lena, h1, 'conv', 'replicate');
im2 = imfilter(lena, h2, 'conv', 'replicate');
im3 = imfilter(lena, h3, 'conv', 'replicate');

subplot(2, 2, 1), imshow(lena);
subplot(2, 2, 2), imshow(im1);
subplot(2, 2, 3), imshow(im2);
subplot(2, 2, 4), imshow(im3);

figure();
h1 = fspecial('gaussian', [3 3], 0.5);
h2 = fspecial('gaussian', [5 5], 0.5);
h3 = fspecial('gaussian', [7 7], 0.5);

im1 = imfilter(lena, h1, 'conv', 'replicate');
im2 = imfilter(lena, h2, 'conv', 'replicate');
im3 = imfilter(lena, h3, 'conv', 'replicate');
subplot(2, 2, 1), imshow(lena);
subplot(2, 2, 2), imshow(im1);
subplot(2, 2, 3), imshow(im2);
subplot(2, 2, 4), imshow(im3);


