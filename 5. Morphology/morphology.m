%
%    Part 5  Image Morphology
%

lena = imread('../pic/lena_color.png');
SE = strel('diamond', 1);
out = imerode(lena, SE);

subplot(1, 2, 1), imshow(lena), title('original');
subplot(1, 2, 2), imshow(out), title('eroded');