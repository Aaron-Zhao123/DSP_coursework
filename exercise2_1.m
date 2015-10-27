%exercise2_1
N = [16 1024 4096];

DFT = N.^2;
FFT = N .* log(N) ./ log(2);

diff = DFT - FFT;

disp(diff);