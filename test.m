se = strel('disk',5);        
for i = 1:11
    for j = 1:12
        a = imread(['D:\SGP_SEM7\Ka\' num2str(i) '\' num2str(j) '.jpg']);
        x = imresize(a,[200 200]);
        imwrite(x,['D:\SGP_SEM7\Ka\' num2str(i) '\' num2str(j) '.jpg'],'jpg');
        y = imnoise(x, 'gaussian');
        imwrite(y,['D:\SGP_SEM7\Ka\' num2str(i) '\' num2str(j+12) '.jpg'],'jpg');
        y = imnoise(x,'poisson');
        imwrite(y,['D:\SGP_SEM7\Ka\' num2str(i) '\' num2str(j+24) '.jpg'],'jpg');
        y = imnoise(x,'speckle',1);
        imwrite(y,['D:\SGP_SEM7\Ka\' num2str(i) '\' num2str(j+36) '.jpg'],'jpg');
        y = imnoise(x,'speckle');
        imwrite(y,['D:\SGP_SEM7\Ka\' num2str(i) '\' num2str(j+48) '.jpg'],'jpg');
        y = imnoise(x,'salt & pepper', 0.01);
        imwrite(y,['D:\SGP_SEM7\Ka\' num2str(i) '\' num2str(j+60) '.jpg'],'jpg');
   
        y = imdilate(x,se);
        imwrite(y,['D:\SGP_SEM7\Ka\' num2str(i) '\' num2str(j+72) '.jpg'],'jpg');
        z = imnoise(y, 'gaussian');
        imwrite(z,['D:\SGP_SEM7\Ka\' num2str(i) '\' num2str(j+84) '.jpg'],'jpg');
        z = imnoise(y,'poisson');
        imwrite(z,['D:\SGP_SEM7\Ka\' num2str(i) '\' num2str(j+96) '.jpg'],'jpg');
        z = imnoise(y,'speckle',1);
        imwrite(z,['D:\SGP_SEM7\Ka\' num2str(i) '\' num2str(j+108) '.jpg'],'jpg');
        z = imnoise(y,'speckle');
        imwrite(z,['D:\SGP_SEM7\Ka\' num2str(i) '\' num2str(j+120) '.jpg'],'jpg');
        z = imnoise(y,'salt & pepper', 0.01);
        imwrite(z,['D:\SGP_SEM7\Ka\' num2str(i) '\' num2str(j+132) '.jpg'],'jpg');
   
        y = imerode(x,se);
        imwrite(y,['D:\SGP_SEM7\Ka\' num2str(i) '\' num2str(j+144) '.jpg'],'jpg');
        z = imnoise(y, 'gaussian');
        imwrite(z,['D:\SGP_SEM7\Ka\' num2str(i) '\' num2str(j+156) '.jpg'],'jpg');
        z = imnoise(y,'poisson');
        imwrite(z,['D:\SGP_SEM7\Ka\' num2str(i) '\' num2str(j+168) '.jpg'],'jpg');
        z = imnoise(y,'speckle',1);
        imwrite(z,['D:\SGP_SEM7\Ka\' num2str(i) '\' num2str(j+180) '.jpg'],'jpg');
        z = imnoise(y,'speckle');
        imwrite(z,['D:\SGP_SEM7\Ka\' num2str(i) '\' num2str(j+192) '.jpg'],'jpg');
        z = imnoise(y,'salt & pepper', 0.01);
        imwrite(z,['D:\SGP_SEM7\Ka\' num2str(i) '\' num2str(j+204) '.jpg'],'jpg');
   
        x = imresize(a,[50 50]);
        imwrite(x,['D:\SGP_SEM7\Ka\' num2str(i) '\' num2str(j+216) '.jpg'],'jpg');
        y = imnoise(x, 'gaussian');
        imwrite(y,['D:\SGP_SEM7\Ka\' num2str(i) '\' num2str(j+228) '.jpg'],'jpg');
        y = imnoise(x,'poisson');
        imwrite(y,['D:\SGP_SEM7\Ka\' num2str(i) '\' num2str(j+240) '.jpg'],'jpg');
        y = imnoise(x,'speckle',1);
        imwrite(y,['D:\SGP_SEM7\Ka\' num2str(i) '\' num2str(j+252) '.jpg'],'jpg');
        y = imnoise(x,'speckle');
        imwrite(y,['D:\SGP_SEM7\Ka\' num2str(i) '\' num2str(j+264) '.jpg'],'jpg');
        y = imnoise(x,'salt & pepper', 0.01);
        imwrite(y,['D:\SGP_SEM7\Ka\' num2str(i) '\' num2str(j+276) '.jpg'],'jpg');
        y = imerode(x,se);
        imwrite(y,['D:\SGP_SEM7\Ka\' num2str(i) '\' num2str(j+288) '.jpg'],'jpg');
   
        x = imresize(a,[400 400]);
        imwrite(x,['D:\SGP_SEM7\Ka\' num2str(i) '\' num2str(j+312) '.jpg'],'jpg');
        y = imnoise(x, 'gaussian');
        imwrite(y,['D:\SGP_SEM7\Ka\' num2str(i) '\' num2str(j+324) '.jpg'],'jpg');
        y = imnoise(x,'poisson');
        imwrite(y,['D:\SGP_SEM7\Ka\' num2str(i) '\' num2str(j+336) '.jpg'],'jpg');
        y = imnoise(x,'speckle',1);
        imwrite(y,['D:\SGP_SEM7\Ka\' num2str(i) '\' num2str(j+348) '.jpg'],'jpg');
        y = imnoise(x,'speckle');
        imwrite(y,['D:\SGP_SEM7\Ka\' num2str(i) '\' num2str(j+360) '.jpg'],'jpg');
        y = imnoise(x,'salt & pepper', 0.01);
        imwrite(y,['D:\SGP_SEM7\Ka\' num2str(i) '\' num2str(j+372) '.jpg'],'jpg');
        y = imerode(x,se);
        imwrite(y,['D:\SGP_SEM7\Ka\' num2str(i) '\' num2str(j+384) '.jpg'],'jpg');
        y = imdilate(x,se);
        imwrite(y,['D:\SGP_SEM7\Ka\' num2str(i) '\' num2str(j+396) '.jpg'],'jpg');
    end
end