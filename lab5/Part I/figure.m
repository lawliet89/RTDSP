format long e;
Ts=1/8000;  % sampling period
R=1000; C=1e-6; % RC values

% S-plane coefficients
B=[0 1];
A=[R*C 1];

% plot s-plane frequency response
%figure

%subplot(2,1,1);
%[h, omega] = freqs(B,A,2048);

%plot (omega, mag2db(abs(h)));

w = linspace(0,25132,10000);
freqs(B,A,w);