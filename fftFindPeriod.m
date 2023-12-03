Fs = 1000;            % Sampling frequency                    
T = 1/Fs;             % Sampling period       
L = 5000;             % Length of signal
t = (0:L-1)*T;        % Time vector
f = Fs*(0:(L/2))/L;

g = @(x)sin(7*pi*x) + x;
%S = sin(2*pi*5*t) + sin(2*pi*5*t)+ t;
S = g(t);

Y = fft(S);
P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);

plot(f,P1) 
title("Single-Sided Amplitude Spectrum of S(t)")
xlabel("f (Hz)")
ylabel("|P1(f)|")
xlim([0,50])

I = islocalmax(P1);
peak_frequency = mean(f(I))

% Find the period
period = 1/peak_frequency