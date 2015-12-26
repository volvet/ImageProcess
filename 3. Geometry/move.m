%
%    Part 2  Geometry
%


clear;
lena = double(imread('../pic/lena_color.png'));
movedLena = zeros(size(lena));
H = size(lena);

offsetX = 100;
offsetY = 100;

movedLena(offsetY+1:H(1), offsetX+1:H(2), 1:H(3)) = lena(1:H(1)-offsetY, 1:H(2)-offsetX, 1:H(3));

subplot(1,2,1), subimage(uint8(lena));
subplot(1,2,2), subimage(uint8(movedLena));

