%
%    Part 5  Edge Detection
%

lena = imread('../pic/lena.jpg');

sobel = edge(lena, 'sobel');
roberts = edge(lena, 'roberts');
prewitt = edge(lena, 'prewitt');
log     = edge(lena, 'log');
canny  = edge(lena, 'canny');

subplot(2, 3, 1),  imshow(lena), title('original');
subplot(2, 3, 2),  imshow(sobel),  title('sobel');
subplot(2, 3, 3),  imshow(roberts),  title('roberts');
subplot(2, 3, 4),  imshow(prewitt), title('prewitt');
subplot(2, 3, 5),  imshow(log), title('log');
subplot(2, 3, 6),  imshow(canny), title('canny');

figure();

nOper = [ 1, 2, 1; 0, 0, 0; -1, -2, -1 ];
sOper = [ -1, -2, -1; 0, 0, 0; 1, 2, 1 ];
wOper = [1, 0 , -1; 2, 0, -2; 1, 0, -1 ];
eOper = [-1, 0, 1; -2, 0, 2; -1, 0, 1 ];

NN = imfilter(lena, nOper, 'replicate', 'conv');
SS = imfilter(lena, sOper, 'replicate', 'conv');
WW = imfilter(lena, wOper, 'replicate', 'conv');
EE = imfilter(lena, wOper, 'replicate', 'conv');

subplot(2, 4, 1), imshow(NN), title('North');
subplot(2, 4, 2), imshow(SS), title('South');
subplot(2, 4, 3), imshow(WW), title('West');
subplot(2, 4, 4), imshow(EE), title('East');


