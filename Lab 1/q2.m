% question 2
% Author: Himanshu Sharma
% Roll Number: 1610110149
% Instructor: Vijay k. Chakka

% read the audio
[y, fs] = audioread('audio.mp3');

% define time
t = 0:1/fs:2;

% extract 2 sec frames
v = y(1:2*fs+1);

% floor
fl = floor(v);

% ceil
cl = ceil(v);

% round
rnd = round(v);

% display them all together
figure;

subplot(2,2,1);
plot(t, v);
xlabel('time (seconds)');
ylabel('Amplitude');
title('Original 2 second sound');

subplot(2,2,2);
plot(t, fl);
xlabel('time (seconds)');
ylabel('Amplitude');
title('Floored sound');

subplot(2,2,3);
plot(t, cl);
xlabel('time (seconds)');
ylabel('Amplitude');
title('Ceiled sound');

subplot(2,2,4);
plot(t, rnd);
xlabel('time (seconds)');
ylabel('Amplitude');
title('Rounded sound');
