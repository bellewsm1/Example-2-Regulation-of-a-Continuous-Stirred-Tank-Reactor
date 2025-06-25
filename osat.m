function [M] = osat(x)
M=psisat(1-x)/(psisat(x)+psisat(1-x));