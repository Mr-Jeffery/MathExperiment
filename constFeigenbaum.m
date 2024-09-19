max_it = 13;
max_it_j = 10;
a1 = 1.0;
a2 = 0.0;
d1 = 3.2;
a = 0.0;

disp(' i       d');
for ii = 2:max_it
    a = a1 + (a1 - a2) / d1;
    for j = 1:max_it_j
        x = 0.0;
        y = 0.0;
        for k = 1:2^ii
            y = 1.0 - 2.0 * y * x;
            x = a - x * x;
            hold on
            scatter(x,y)
            drawnow
        end
        hold on
        a = a - x / y;
    end
    d = (a1 - a2) / (a - a1);
    fprintf('%2d    %.8f\n', ii, d);
    d1 = d;
    a2 = a1;
    a1 = a;
end
