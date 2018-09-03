% c
% Author: Himanshu Sharma
% Roll No. 1610110149
% Instructor: Vijay k. Chakka

% read a video
V = VideoReader('video.mp4');

% No of frames
disp('No. of Frames:');
disp(V.NumberOfFrames);

% use a writer to create a new video
wrt = VideoWriter('out.avi');

% open it for writing.
open(wrt);

% loop through the frames such that it becomes total  of 2 sec.
for i = 1:3*V.FrameRate
    % collect the ith frame.
    f = read(V, i);
    % save the frame as image
    imwrite(f, [num2str(i), '.png']);
    % write it on the video
    writeVideo(wrt, f);
end

% close the writer
close(wrt);