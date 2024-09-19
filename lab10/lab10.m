% 定义函数
f = @(x) exp(x);

% 定义积分区间
a = 0;
b = pi;

% 定义n值
n_values = [2, 4, 8, 16, 32, 64];

% 初始化结果数组
right_rect_results = zeros(1, length(n_values));
trapz_results = zeros(1, length(n_values));
simpson_results = zeros(1, length(n_values));

% 对每个n值进行计算
for i = 1:length(n_values)
    n = n_values(i);
    h = (b - a) / n;
    X = linspace(b,a,n);

    % right rectangle
    right_rect_results(i) = h * sum(f(X(2:end)));
    for k = 1:n
        hold on
        plot(integralShape(@(x)x-x+f(a+k*h),a+(k-1)*h,a+k*h))
        drawnow
    end
    clf
end

% % 输出结果
% disp('右矩形法结果：');
% disp(right_rect_results);
% disp('梯形法结果：');
% disp(trapz_results);
% disp('辛普森法结果：');
% disp(simpson_results);
% % 梯形法
% trapz_results(i) = trapz(x, f(x));
% 
% % 辛普森法
% simpson_results(i) = h/3 * (f(a) + 4*sum(f(x(2:2:end-1))) + 2*sum(f(x(3:2:end-2))) + f(b));

function pgon = integralShape(f,a,b)
X = linspace(a,b,100);
Y = f(X);
pgon = polyshape([X,X(end:-1:1)],[Y,zeros(1,100)]);
end