function[xn] = idft(Xk,N) 

    n = [0:1:N-1]; % rowvector for n 
    k = [0:1:N-1];% rowvecorfor k 
    WN = exp(-j*2*pi/N); % Wnfactor 
    nk= n’*k; % createsa N by N matrixofnkvalues 
    WNnk= WN .^ (-nk); % IDFT matrix 
    xn= (Xk* WNnk)/N; % rowvector for IDFT values