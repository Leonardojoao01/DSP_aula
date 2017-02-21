function script
    sinal = [1,1,1,1];
    SN = 4;
    
    [s_dft] = dft(sinal, SN);
    [s_dtft] = idft(sinal, SN);
    
    subplot(2,2,1);stem(s_dft);title('DFT');
    subplot(2,2,2);stem(s_dtft);title('DTFT');
    
end

