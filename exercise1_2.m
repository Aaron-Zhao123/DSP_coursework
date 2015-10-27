function x=exercise1_2(A,f0,fs,phi,nstart,nend)

x=zeros(nend-nstart+1,1);
i=1;
for n=nstart:nend
    x(i)=A*cos(2.*pi.*f0./fs.*n+phi);
    %f0/fs is called normalized frequency
    i=i+1;
end


