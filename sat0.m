function y=sat0(x,s)

if abs(x)<=s
    y=x;
else
    y=sign(x)*s;
end