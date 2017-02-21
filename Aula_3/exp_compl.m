function [ x,n ] = exp_compl( a,b,n0,n1 )

    n = n0:n1; 
    x = a*exp(1j*(n+b));

end
