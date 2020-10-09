i = imread('2.jpg');

iblur = imgaussfilt(i,1);
jblur = imgaussfilt(i,2);

subplot(2,2,1); imshow(iblur)
subplot(2,2,2); imshow(jblur)