leme = imread('leme.bmp');

leme_just = imadjust(leme,[0:1],[0:1],0.35);

imshow(leme);
figure, imshow(leme_just);

subplot(1,2,1), imshow(leme);
title ('Imagem normal')
subplot(1,2,2), imshow(leme_just);
title ('Imagem ajustada')