% d.
% Author: Himanshu Sharma
% Roll Number: 1610110149
% Instructor: Vijay k. Chakka

% read the excel file
[num, str] = xlsread('Text_Data.xlsx');

% converting to character array.
arr = char(str);
% convert to numerical ascii value.
ascii = double(arr);

i = reshape(ascii, [], max(factor(length(ascii))));
imshow(i);