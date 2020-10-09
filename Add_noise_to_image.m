I = imread('2.jpg');

m = imnoise(I, 'salt & pepper', 0.01);
n = imnoise(I, 'poisson');
o = imnoise(I, 'speckle');
p = imnoise(I, 'gaussian');
q = imnoise(I, 'salt & pepper', 0.05);
s = imnoise(I, 'speckle', 1);

subplot(3,3,1); imshow(m)
subplot(3,3,2); imshow(n)
subplot(3,3,3); imshow(o)
subplot(3,3,4); imshow(p)
subplot(3,3,5); imshow(q)
subplot(3,3,6); imshow(s)
