%exercise 2_2
n= 0:1:15*2;
x_n = exp(complex(0,-1) .* n .* 3);

figure
subplot (2,1,1);
plot (n, abs(x_n));
subplot (2,1,2);
plot (n, phase(x_n));

figure
X= fft(x_n);
subplot (2,1,1);
plot (n, abs(X));
subplot (2,1,2);
plot (n, phase(X));
