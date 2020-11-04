se = strel('disk',5);
se2 = strel('disk',3);
for i = 1:11
    for j = 1:14
        a = imread(['D:\SGP_SEM7\Na\' num2str(i) '\' num2str(j) '.jpg']);
        x = imresize(a,[100 100]);
        imwrite(x,['D:\SGP_SEM7\Na\' num2str(i) '\' num2str(j) '.jpg'],'jpg');
        y = imnoise(x,'gaussian');
        imwrite(y,['D:\SGP_SEM7\Na\' num2str(i) '\' num2str(j+14) '.jpg'],'jpg');
        y = imnoise(x,'speckle');
        imwrite(y,['D:\SGP_SEM7\Na\' num2str(i) '\' num2str(j+28) '.jpg'],'jpg');
        y = imnoise(x,'poisson');
        imwrite(y,['D:\SGP_SEM7\Na\' num2str(i) '\' num2str(j+42) '.jpg'],'jpg');
        y = imnoise(x,'salt & pepper',0.02);
        imwrite(y,['D:\SGP_SEM7\Na\' num2str(i) '\' num2str(j+56) '.jpg'],'jpg');
        y = imgaussfilt(x,2);
        imwrite(y,['D:\SGP_SEM7\Na\' num2str(i) '\' num2str(j+70) '.jpg'],'jpg');
        z = imnoise(y,'gaussian');
        imwrite(z,['D:\SGP_SEM7\Na\' num2str(i) '\' num2str(j+84) '.jpg'],'jpg');
        y = imgaussfilt(x,4);
        imwrite(y,['D:\SGP_SEM7\Na\' num2str(i) '\' num2str(j+98) '.jpg'],'jpg');
        z = imnoise(y,'poisson');
        imwrite(z,['D:\SGP_SEM7\Na\' num2str(i) '\' num2str(j+112) '.jpg'],'jpg');
        y = imerode(x,se);
        imwrite(y,['D:\SGP_SEM7\Na\' num2str(i) '\' num2str(j+126) '.jpg'],'jpg');
        z = imnoise(y,'speckle');
        imwrite(z,['D:\SGP_SEM7\Na\' num2str(i) '\' num2str(j+140) '.jpg'],'jpg');
        y = imdilate(x,se2);
        imwrite(y,['D:\SGP_SEM7\Na\' num2str(i) '\' num2str(j+154) '.jpg'],'jpg');
        z = imnoise(y,'salt & pepper',0.02);
        imwrite(z,['D:\SGP_SEM7\Na\' num2str(i) '\' num2str(j+168) '.jpg'],'jpg');
       
        x = imresize(a,[300 300]);
        imwrite(x,['D:\SGP_SEM7\Na\' num2str(i) '\' num2str(j+182) '.jpg'],'jpg');
        y = imnoise(x,'gaussian');
        imwrite(y,['D:\SGP_SEM7\Na\' num2str(i) '\' num2str(j+196) '.jpg'],'jpg');
        y = imnoise(x,'speckle');
        imwrite(y,['D:\SGP_SEM7\Na\' num2str(i) '\' num2str(j+210) '.jpg'],'jpg');
        y = imgaussfilt(x,4);
        imwrite(y,['D:\SGP_SEM7\Na\' num2str(i) '\' num2str(j+224) '.jpg'],'jpg');
        z = imdilate(y,se);
        imwrite(z,['D:\SGP_SEM7\Na\' num2str(i) '\' num2str(j+238) '.jpg'],'jpg');
        z = imerode(y,se);
        imwrite(z,['D:\SGP_SEM7\Na\' num2str(i) '\' num2str(j+252) '.jpg'],'jpg');
       
        x = imresize(a,[500 500]);
        imwrite(x,['D:\SGP_SEM7\Na\' num2str(i) '\' num2str(j+266) '.jpg'],'jpg');
        y = imnoise(x,'poisson');
        imwrite(y,['D:\SGP_SEM7\Na\' num2str(i) '\' num2str(j+280) '.jpg'],'jpg');
        y = imnoise(x,'salt & pepper',0.02);
        imwrite(y,['D:\SGP_SEM7\Na\' num2str(i) '\' num2str(j+294) '.jpg'],'jpg');
        y = imgaussfilt(x,2);
        imwrite(y,['D:\SGP_SEM7\Na\' num2str(i) '\' num2str(j+308) '.jpg'],'jpg');
        z = imdilate(y,se);
        imwrite(z,['D:\SGP_SEM7\Na\' num2str(i) '\' num2str(j+322) '.jpg'],'jpg');
        z = imerode(y,se);
        imwrite(z,['D:\SGP_SEM7\Na\' num2str(i) '\' num2str(j+336) '.jpg'],'jpg');
    end
end