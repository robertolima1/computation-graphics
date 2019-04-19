%******Lendo imagens de diversos contrates de Einstein
img_high = imread("Einstein_high_contrast.png");
img_med = imread("Einstein_low_contrast.png");
img_low = imread("Einstein_med_contrast.png");

img_high_1  = imadjust(img_high, [0.1 0.5],[0.4 1]);
img_med_1  = imadjust(img_med, [0.2 0.5],[]);
img_low_1  = imadjust(img_low, [0.3 0.75],[0.2 0.9]);

subplot(1,4,1),imshow(img_high);
subplot(1,4,2), imshow(img_high_1);
subplot(1,4,3), imhist(img_high);
subplot(1,4,4), imhist(img_high_1);

%figure;
%subplot(1,4,1), imshow(img_med);
%subplot(1,4,2), imshow(img_med_1);
%subplot(1,4,3), imhist(img_med);
%subplot(1,4,4), imhist(img_med_1);

figure;
subplot(1,4,1), imshow(img_low);
subplot(1,4,2), imshow(img_low_1);
subplot(1,4,3), imhist(img_low);
subplot(1,4,4), imhist(img_low_1);


