i = imread('1.jpg');

irotate = imrotate(i, -20);
jrotate = imrotate(i, -10);
krotate = imrotate(i, 10);
mrotate = imrotate(i, 20);

subplot(2,2,1); imshow(irotate)
subplot(2,2,2); imshow(jrotate)
subplot(2,2,3); imshow(krotate)
subplot(2,2,4); imshow(mrotate)
