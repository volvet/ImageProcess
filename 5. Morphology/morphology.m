%
%    Part 5  Image Morphology
%

lena = imread('../pic/lena_color.png');
SE = strel('diamond', 1);
eroded = imerode(lena, SE);
dilated = imdilate(lena, SE);

subplot(1, 3, 1), imshow(lena), title('original');
subplot(1, 3, 2), imshow(out), title('eroded');
subplot(1, 3, 3), imshow(dilated), title('dilated');