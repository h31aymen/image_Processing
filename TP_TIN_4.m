img1 = imread('ImageBinaire.png');

element = strel('square', 3);
eroded = imerode(img_bin, se);
ctr = img_bin - eroded;

figure(1);
subplot(121);
imshow(img)
title('ImageBinaire');

subplot(122);
imshow(ctr)
title('Contours');

img2= imread('ImageBinaireCircuit.png');
figure(2);
subplot(121);
imshow(img2)

subplot(122);


img2_e = imopen(img_bin, se);
img2_e = imerode(img2, strel('square', 4));
img2_e = imerode(img2_e, strel('square', 4));
img2_e = imerode(img2_e, strel('square', 4));
img2_e = imerode(img2_e, strel('square', 4));
img2_e = imerode(img2_e, strel('square', 4));
img2_e = imerode(img2_e, strel('square', 4));
img2_e = imdilate(img2_e, strel('square',5));
img2_e = imdilate(img2_e, strel('square', 5));
img2_e = imdilate(img2_e, strel('square', 5));
img2_e = imdilate(img2_e, strel('square', 5));
img2_e = imdilate(img2_e, strel('square', 5));
imshow(img2_e)
%% 
img3 = imbinarize(imread("lame0001.jpg"));
figure(3);
imshow(img3)