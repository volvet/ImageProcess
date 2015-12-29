
clear;
lena = imread('../pic/lena.jpg');
lena = double(lena);
w = 5;
sigmaD = 3;
sigmaR = 1.0;
out = bilateral(lena, w, sigmaD, sigmaR);
subplot(1, 2, 1), imshow(uint8(lena)), title('original');
subplot(1, 2, 2), imshow(uint8(out)), title('filtered');

figure();
lena = imread('../pic/lena_color.png');
lena = double(lena);
w = 5;
sigmaD = 3;
sigmaR = 1.0;
out = bilateral(lena, w, sigmaD, sigmaR);
subplot(1, 2, 1), imshow(uint8(lena)), title('original');
subplot(1, 2, 2), imshow(uint8(out)), title('filtered');