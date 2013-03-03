format long e;
fs = 8000;
Ts=1/fs;  % sampling period
R=1000; C=1e-6; % RC values

% S-plane coefficients
B = [0 1];
A = [R*C 1];

% plot s-plane frequency response
figure;
freqs(B,A,10000);

% Z-plane coefficients
a = [1 (Ts-2*R*C)/(Ts+2*R*C)];
b = [Ts/(Ts+2*R*C) Ts/(Ts+2*R*C)];

% plot z-plane
figure;
freqz(b,a,5012, fs);