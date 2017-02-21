function [y,ny] = conv_n(x,nx,h,nh)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
    
    nyb= nx(1)+nh(1); nye= nx(length(x)) + nh(length(h)); 
    ny= [nyb:nye]; y = conv(x,h);
end

