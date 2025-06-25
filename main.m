clear
clc
x0=[1;2;3;-1;0*rand(10,1);0*rand(5,1);2];

t0 = 0; tf = 50;

tspan   = [t0,tf];

step=10^(-0);
options = odeset('AbsTol',1e-9,'RelTol',1e-5);

tspan=t0:step:tf;

xx1=[x0];
t1=[0];

for i=1:length(tspan)-1

%[t0,y] = ode45('RTAC', [tspan(i),tspan(i+1)] , x1(:,end));    
[t0,y]   = ode15s(@RTAC,[tspan(i),tspan(i+1)] , xx1(:,end),options);
xx1=[xx1,y'];
t1=[t1;t0];
i
end



%

x0=[1;2;3;-1;0*rand(10,1);0*rand(5,1);2];

[t,x2] = ode15s('RTAC2', tspan , x0);

x2state;



% 
% figure(4)
% plot(t1,x1(6:9,:))
% 
% figure(5)
% plot(t1,x1(10:13,:))



