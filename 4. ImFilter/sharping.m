%
%    Part 4  Sharpness Filter
%

lena = imread('../pic/lena_color.png');
H = fspecial('unsharp');
sharpenedImg = imfilter(lena, H, 'corr', 'replicate');

subplot(1, 2, 1), imshow(lena), title('original');
subplot(1, 2, 2), imshow(sharpenedImg), title('sharpened');