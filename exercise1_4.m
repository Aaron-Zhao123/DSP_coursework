function [reconstructed_sig]=exercise1_4( x,n,t )
% sinc function
T= 1;
for i=1:length(n)
    sinc_func(i,:)= (sin (pi * (t - n(i).*T)./T)) ./ (pi.*(t - n(i).*T)./T);
end % n*t matrix

% x is a 1*n matrix
reconstructed_sig= x * sinc_func; % recon_sig is 1*x matrix
end

