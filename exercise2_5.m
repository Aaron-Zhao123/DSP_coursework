%exercise2_5 ( need to further review regarding the question
n1= [0 1 2 3 4 5 6 7 8 9];
y1= sin(2* pi .* n1 ./ 10);

n2= [0 1 2 3 4 5 6 7 8 9 10];
y2= sin(2* pi .* n2 ./ 10);


y1_freq= fft(y1);
y2_freq= fft(y2);

figure
subplot (2,2,1);
plot (n1,abs(y1_freq));
title (' abs');
subplot (2,2,2);
plot (n1,phase(y1_freq));
title(' phase');
subplot (2,2,3);
plot (n2,abs(y2_freq));
title (' abs');
subplot (2,2,4);
plot (n2,phase(y2_freq));
title(' phase');

% the DFT could be visulized as convolve a signal with sinc in frequency
% domain, hence, it produces leakge due to the shape of a sinc
% however, this leakage could be minimized by using a 'smoother' window:
% eg: hanning window and etc

% the two signals are different because the sample spaces are different
