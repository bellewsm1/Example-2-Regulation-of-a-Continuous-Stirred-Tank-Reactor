function [M] = psisat(x)
if x>0
    M=exp(-x^(-1));
else
    M=0;
end