
%exercise2_3

n=0;
x_n=1;

l = 1;

x_n_delayed=zeros(1,8);
n = 0:1:7;
for i = 1:8
    if (i == l)
        x_n_delayed(i) = 1;
    end
end

X_n_freq= fft(x_n_delayed);

figure
subplot (2,1,1);
plot (n, abs(X_n_freq));
title ('impluse abs')
subplot (2,1,2);
plot (n, phase(X_n_freq));
% DFT of a delta fucntion is zero magnitude and zero phase
% ii it will be a flat line in frequency domain 
title ('impulse phase');

figure 
n = 0:1:7;
X_fft= fft(ones(1,8));
subplot (2,1,1);
plot (n,abs(X_fft));
title ('constant abs');
subplot (2,1,2);
plot (n,phase(X_fft));
title('constant phase');