r = im2double(imread("gavea_r.png"));
g = im2double(imread("gavea_g.png"));
b = im2double(imread("gavea_b.png"));
nir = im2double(imread("gavea_nir.png"));

img_true = cat(3,r(:,:,1),g(:,:,2),b(:,:,3));
figure,imshow(img_true);
ndvi = (nir - r) ./ (nir + r);
img =ndvi > 0.5;
figure,imshow(img);