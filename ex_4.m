ferrari = imread('Ferrari.jpg'); 
ferrari = im2double(ferrari);
ferrari_rgb = rgb2gray(ferrari);

%Filtro de sobel
sx = [-1 -2 -1; 0 0 0; 1 2 1];
gx = imfilter(ferrari_rgb, sx);
sy = [-1 0 1; -2 0 2; -1 0 1];
gy = imfilter(ferrari_rgb, sy);
mag = abs(gx) + abs(gy);

%Angulo
ang = atan2(gy,gx);

%Gradiente
grad = mag > 0.25;
%Mapa de cores
map = [0 0 0; 1 1 0; 0 1 0; 1 0 0; 0 0 1];

imf = zeros(size(ang,1), size(ang,2));

imf(find(ang < ((1/6)*pi))) = 4;
imf(find(ang > ((11/6)*pi))) = 4;
imf(find(ang > ((8/6)*pi) & ang < ((10/6)*pi))) = 2;
imf(find(ang > ((5/6)*pi) & ang < ((7/6)*pi))) = 5;
imf(find(ang > ((1/3)*pi) & ang < ((2/3)*pi))) = 3;
imf = imf .* grad;

imshow(ferrari);
figure, imshow(mag);
figure, imshow(imf,map);

