

lena = imread('../pic/lena.jpg');
gauss = imnoise(lena, 'gaussian', 0, 0.005);
sault = imnoise(lena, 'salt & pepper', 0.005);
poiss = imnoise(lena, 'poisson');


subplot(2, 2, 1), imshow(lena), title('original');

[mssim, map] = ssim_index(lena, gauss);
subplot(2, 2, 2), imshow(gauss), title(num2str(mssim));

[mssim, map] = ssim_index(lena, sault);
subplot(2, 2, 3), imshow(sault), title(num2str(mssim));

[mssim, map] = ssim_index(lena, poiss);
subplot(2, 2, 4), imshow(poiss), title(num2str(mssim));

