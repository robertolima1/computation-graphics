media_matriz = [1/9 1/9 1/9 ; 1/9 1/9 1/9 ; 1/9 1/9 1/9];
img = imread("arara_full.png");
img_d = im2double(img);
img_noise =  imnoise (img_d, "salt & pepper", 0.09);
subplot(1,2,1), imshow(img_d);
title ('Imagem normal')
subplot(1,2,2), imshow(img_noise);
title ('Imagem com ruído')
img_s = imfilter(img_noise, media_matriz)
figure,imshow(img_s);
title('Imagem suavizada')

%Separando 
img_noise_1 = img_noise(:,:,1); 
img_noise_2 = img_noise(:,:,2);
img_noise_3 = img_noise(:,:,3);
img_noise_1 = medfilt2(img_noise_1);
img_noise_2 = medfilt2(img_noise_2);
img_noise_3 = medfilt2(img_noise_3);
img_ff = cat(3,img_noise_1, img_noise_2, img_noise_3);
figure,imshow(img_ff);
title ('Imagem com filtrada')
