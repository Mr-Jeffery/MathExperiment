clear; 
clc;

n = 1:1:10;
nImages = length(n);%calculate frame number
fig = figure;
for idx = 1:nImages
    %fill in whatever you want to draw
    drawnow
    frame = getframe(fig);
    im{idx} = frame2im(frame);
end

filename = 'testAnimated.gif'; % Specify the output file name
for idx = 1:nImages
    [A,map] = rgb2ind(im{idx},256);
    if idx == 1
        imwrite(A,map,filename,'gif','LoopCount',Inf,'DelayTime',0.8);%first frame, used to create file
    else
        imwrite(A,map,filename,'gif','WriteMode','append','DelayTime',0.8);%adding more frames
    end
end
