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

subplot(2,1,1) , plot(w, mag2db(abs(h)), 2*pi*omega,mag2db(abs(H)));
xlim([0, pi*fs]);
xlabel('Angular Frequency (rad s-1)');
ylabel('Gain (dB)');
legend('Analogue Filter','Digital Filter');
grid on;
subplot(2,1,2),plot(w,unwrap(angle(h)), 2*pi*omega, unwrap(angle(H)));
xlim([0, pi*fs]);
xlabel('Angular Frequency (rad s-1)');
ylabel('Phase (radians)');
legend('Analogue Filter','Digital Filter');
grid on;
