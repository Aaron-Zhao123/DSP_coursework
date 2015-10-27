%Exercise_one
figure(100)
n= 0:40;
x= sin(n* pi / 10);
stem (n,x);
title('Example');
xlabel('time');
ylabel('amplitude');

figure(101) 
subplot(4,1,1);
n1=-20:20;
x1 = 0.5*ones(size(n1));
stem (n1+5,x1);
title('1.1.a');
xlabel('time');
ylabel('amplitude');

subplot(4,1,2);
n2=0:50;
x2=cos(n2 * pi / sqrt(23));
stem (n2,x2);
title('1.1.b');
xlabel('time');
ylabel('amplitude');

subplot(4,1,3);
n3=0:20;
x3=0.8.^(n3).*ones(size(n3));
stem (n3,x3);
title('1.1.c');
xlabel('time');
ylabel('amplitude');

subplot(4,1,4);
n4=-10:10;
x4=exp((1i).*2.*pi.*n4./10);
stem (n3,x3);
title('1.1.c');
xlabel('time');
ylabel('amplitude');



