clear;
format long e;
fs = 8000; % sampling frequency
Ts=1/fs;  % sampling period
R=1000; C=1e-6; % RC values

% S-plane coefficients
B = [0 1];
A = [R*C 1];

%plot 
figure;

% plot s-plane frequency response
w = linspace(0, pi*fs, 5012);
h = freqs(B,A,w);

% Z-plane coefficients
a = [1 (Ts-2*R*C)/(Ts+2*R*C)];
b = [Ts/(Ts+2*R*C) Ts/(Ts+2*R*C)];

% plot z-plane
[H, omega] = freqz(b,a,5012,fs);

subplot(2,1,1) , plot(w/(2*pi), mag2db(abs(h)), omega,mag2db(abs(H)));
xlim([0, fs/2]);
xlabel('Frequency (Hz)');
ylabel('Gain (dB)');
legend('Analogue Filter','Digital Filter');
grid on;
subplot(2,1,2),plot(w/(2*pi),unwrap(angle(h)), omega, unwrap(angle(H)));
xlim([0, fs/2]);
xlabel('Frequency (Hz)');
ylabel('Phase (radians)');
legend('Analogue Filter','Digital Filter');
grid on;
