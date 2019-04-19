img = imread("digital.png");
t=0.7;
img_d = rgb2gray(img);
img_d = im2double(img_d);
tam = (size(img_d,1) * size(img_d,2));
a1 = (img_d<t);
a2 = (img_d>=t);
u1 = sum(a1(:),"double")./tam;
u2 = sum(a2(:),"double")./tam;
t= 1/2*(u1+u2)

subplot(1,2,1), imshow(img_d);
title ('Imagem normal')
subplot(1,2,2), imhist(img_d);
title ('Histograma normal')


figure,subplot(1,2,1), imshow(img_d>t);
title ('Imagem limiarizada')
subplot(1,2,2), imhist(img_d>t);
title ('Imagem limiarizada')
