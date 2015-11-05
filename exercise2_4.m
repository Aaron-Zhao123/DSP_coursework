% exercise 2_4

% if input are real number sequences, the output would be symmetric in
% terms of phase and magnitude

x_n1 = [ 1 1 1 0 0 0 1 1];
x_n2 = [ 1 1 1 1 0 0 0 1];
x_n3 = [ 1 1 1 0 0 0 0 1];

x_f1= fft(x_n1);
x_f2= fft(x_n2);
x_f3= fft(x_n3);

figure
subplot (3,2,1);
stem(abs(x_f1));
title('x_f1 abs');
hold on
subplot (3,2,2);
stem(angle(x_f1));
title('x_f1 phase');
hold on

subplot (3,2,3);
stem(abs(x_f2));
title('x_f2 abs');
hold on
subplot (3,2,4);
stem(angle(x_f2));
title('x_f2 phase');


subplot (3,2,5);
stem(abs(x_f3));
title('x_f3 abs');
hold on
subplot (3,2,6);
stem(angle(x_f3));
title('x_f3 phase');

hold off

