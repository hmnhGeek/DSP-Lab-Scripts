% b part.
% Author: Himanshu Sharma
% Roll Number: 1610110149
% Instructor: Vijay k. Chakka

% read the image
i = imread('RGB_Image.jpg');

% make 3 copies of images to operate on different channels.
cp1 = i;
cp2 = i;
cp3 = i;

% for cp1 turn off G and B channels so as to get R channel.
cp1(:,:,3) = 0;
cp1(:,:,2) = 0;

% for cp2 turn off R and B channels to get the G channel.
cp2(:,:,1) = 0;
cp2(:,:,3) = 0;

% for cp3 turn off R and G channels to get the B channel.
cp3(:,:,1) = 0;
cp3(:,:,2) = 0;

% show them in a figure.
figure;

subplot(2,2,1);
imshow(i);
title('Original Image');

subplot(2,2,2);
imshow(cp1);
title('Red Channel Image');

subplot(2,2,3);
imshow(cp2);
title('Green Channel Image');

subplot(2,2,4);
imshow(cp3);
title('Blue Channel Image');

cp4 = cp1(:,:,1)+cp2(:,:,2)+cp3(:,:,3);
%disp(cp4);
figure;
imshow(cp4);
title('Sum of individual channels');

% create a new figure for grayscale.
figure;
subplot(1,2,1);
imshow(i);
title('Original Image');

subplot(1,2,2);
imshow(rgb2gray(i));
title('Grayscale Image');

% converting to vectors 
V = reshape(i, [], 1);
%disp(V);

% resize the image;
new_image =imresize(i, [400,300]);
figure;
imshow(new_image);
title('Resized to 400x300');