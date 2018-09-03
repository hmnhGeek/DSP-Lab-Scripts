% a part
% Author: Himanshu Sharma
% Roll no. 1610110149
% Instructor: Vijay k. Chakka

% Read the audio file
[y, fs] = audioread('audio.mp3');

% extracting frames for 2 seconds.
v = y(1:2*fs+1);

% define time array
t = 0:1/fs:2;
plot(t, v);
grid on;
xlabel('time (seconds)');
ylabel('Amplitude');

% reshape the vector y.
Y = reshape(y, [], max(factor(length(y))));
%disp(Y);

% converting 2 sec audio to .wav and saving it.
audiowrite('edited.wav', v, fs);

% playing the audio.
sound(v, fs);