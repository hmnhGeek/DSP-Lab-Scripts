% e part
% Author: Himanshu Sharma
% Roll Number: 1610110149
% Instructor: Vijay k. Chakka

% read the audio file
[y, fs] = audioread('audio.mp3');

% extract the 3 seconds audio.
v = y(1:3*fs+1);

% convert to string so that it can be converted as character array
arr1 = num2str(v);
% convert to character array.
arr2 = char(arr1);
% convert it to ascii
arr3 = double(arr2);

% convert to image.
i = reshape(arr3, [], max(factor(length(arr3))));
imshow(i);