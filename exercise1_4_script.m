%exercise1_4_script

t1 = [-5: 0.1 :5];
x_one= 1; % values xn= delta(n); for n=0 xn=1
n_one= 0; % this is the delta function
[sig_one]=exercise1_4(x_one,n_one,t1);
figure
subplot(2,1,1);
plot (t1, sig_one);

t2 = [-1 : 0.1 : 4];
x_two = [3,2,0,-2];
n_two =[0,1,2,3];
[sig_two] = exercise1_4(x_two,n_two,t2);
subplot(2,1,2);
plot (t2, sig_two);
