clear;

rp = 0.4;                     % passband ripple
rs = 50;                      % stopband ripple
f = [0.065 0.1125 0.5625 0.625]; % Normalised frequencies     
a = [0 1 0];                  % amplitude
fs = 8000;                    % sampling frequency

%dev = [0.00316227766000000,0.0230217824400000,0.00316227766000000];
% calculate deviation
dev = [10^(-rs/20) (10^(rp/20)-1)/(10^(rp/20)+1) 10^(-rs/20)];

% determine the order
[n,fo,ao,w] = firpmord(f,a,dev);

b = firpm(n+3, fo, ao, w);

% time to plot
figure

% linear gain plot
subplot(2,2,[1 3]);
% [h,f] = freqz(b,a,n,fs)
[h, omega] = freqz(b, 1, 2048, fs);
plot( fo.*(fs/2), ao, omega, abs(h));
legend('Ideal', 'Design');
grid minor;
xlabel('Frequency (Hz)');
ylabel('Gain');

% magnitude bode plot
subplot(2,2,2)
plot (omega, mag2db(abs(h)));
grid minor;
xlabel('Frequency (Hz)');
ylabel('Gain (dB)');

% phase bode plot
subplot(2,2,4)
plot (omega, unwrap(angle(h)));
grid minor;
xlabel('Frequency (Hz)');
ylabel('Phase (radians)');

%figure
% bode plots
%freqz(b, 1, 2048, fs);

% write to file
format long e
save ('fir_coef.txt', 'b', '-ascii', '-double', '-tabs');
