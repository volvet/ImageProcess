%
%    Part 3  Geometry
%

lena = imread('../pic/lena_color.png');
lena45 = imrotate(lena, 45, 'bicubic');

imshow(lena45);