%exercise 2_6

omega_max= 2*pi;
omega= 0:2*pi/32:2*pi;
X_k= 1./ abs(1- 0.9 .* exp(-complex(0,1).*omega));

figure 
subplot (2,1,1);
plot (omega,X_k);
title('Fourier Transform');

n= 0:1:31;
x_n = 0.9 .^ n;
X_fft= fft (x_n);
subplot (2,1,2);
plot (n, abs(X_fft));
title('FFT')
