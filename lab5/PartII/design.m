fs = 8000;  % sampling frequency
Wp = [ 2*280/fs, 2*460/fs ];    % normalised passband frequencies
Rp = 0.5;   % passband ripple
Rs = 25;    % stopband attenuation
n = 4;      % 4th order


[z,p,k] = ellip(n/2,Rp,Rs,Wp);

[b,a] = zp2tf(z,p,k); % convert zeroes and poles form to transfer function 
Hd=dfilt.df2(b,a); % create a discrete-time direct form II filter
Hdt = dfilt.df2t(b,a); % direct-form II transposed

fvtool(Hd); % filter visualisation tool
% plot
figure;
[H, omega] = freqz(b,a,5012, fs);

subplot(2,1,1) , plot(omega,mag2db(abs(H)));
xlim([0, 0.5*fs]);
xlabel('Frequency (Hz)');
ylabel('Gain (dB)');
grid on;
subplot(2,1,2),plot(omega, unwrap(angle(H)));
xlim([0, 0.5*fs]);
xlabel('Frequency (Hz)');
ylabel('Phase (radians)');
grid on;

% write coefficients
handle = fopen('coeff.h', 'w+');
fwrite(handle, 'double a[] = {');
fclose(handle);  
dlmwrite('coeff.h', a, '-append', 'delimiter', ',', 'precision', 16);
handle = fopen('coeff.h', 'a');
fwrite(handle, sprintf('};\ndouble b[] = {'));
fclose(handle);
dlmwrite('coeff.h', b, '-append', 'delimiter', ',', 'precision', 16);
handle = fopen('coeff.h', 'a');
fwrite(handle, sprintf('};\n#define N sizeof(a)/sizeof(double)'));
fclose(handle);