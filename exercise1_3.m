%exercise 1_3

fs= 8000; % 8000 samples in 1s
fm1= [150, 300, 450, 600];
fm2= [7400, 7550, 7700, 7850];
fm3= [24150, 24300, 24450, 24600];
Sample_num=100;
nstart=0;
nend= Sample_num-1;
n= nstart:nend;

x1=zeros(length(fm1),100);
x2=zeros(length(fm2),100);
x3=zeros(length(fm2),100);

figure(103)
for i=1:4
    x=exercise1_2(1,fm1(i),fs,0,nstart,nend);
    x1(i,:)=x;
    subplot(4,1,i);
    stem(n./fs,x1(i,:));
    hold on
    time1=[0:1/(fs*10):nend/fs];
    plot(time1,cos(2.*pi.*fm1(i).*time1));
    title(strcat(num2str(fm1(i)),'HZ'));
end

figure (104)
for i=1:4
    x=exercise1_2(1,fm2(i),fs,0,nstart,nend);
    x2(i,:)=x;
    subplot(4,1,i);
    stem(n./fs,x2(i,:));
    hold on
    time2=[0:1/(fs*10):nend/fs];
    plot(time2,cos(2.*pi.*fm2(i)*time2));
    title(strcat(num2str(fm2(i)),'HZ'));
end

% conclusion:
%Aliasing occurs in the figure 104, fs >= 2fsm (Nyquist rate) is not satisfied.
%Looking at the frequency spectrum could realize the reconstruction process

    
figure (105)
for i=1:4
    x=exercise1_2(1,fm3(i),fs,0,nstart,nend);
    x3(i,:)=x;
    subplot(4,1,i);
    stem(n./fs,x3(i,:));
    hold on
    time3=[0:1/(fs*10):nend/fs];
    plot(time3,cos(2.*pi.*fm3(i)*time3));
    title(strcat(num2str(fm3(i)),'HZ'));
end


