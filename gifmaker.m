clear; 
clc;

n = 2:2:10;
nImages = length(n);
fig = figure;
for idx = 1:nImages
    %
    %whatever you want to draw
    %drawnow
    %xlim([-0.5,3.5]);
    %ylim([0,1.2]);
    frame = getframe(fig);
    im{idx} = frame2im(frame);
end

filename = 'testAnimated.gif'; % Specify the output file name
for idx = 1:nImages
    [A,map] = rgb2ind(im{idx},256);
    if idx == 1
        imwrite(A,map,filename,'gif','LoopCount',Inf,'DelayTime',0.8);
    else
        imwrite(A,map,filename,'gif','WriteMode','append','DelayTime',0.8);
    end
end
