function xdot = RTAC(t,x)

v=x(1:2);
x1=x(3);
x2=x(4);
eta1=x(5:14);
a1=x(15:19);
k1=x(20);


omega=0.5;%1;%;

e=x2-10;

k=10;
%m=1.0e+03 *[0.1289;0.5663;1.0859;1.1870;0.8092;0.3522;0.0956;0.0148];
m=[0.04	0.60	4.19	16.67	42.07	70.52	79.74	60.18	29.06	8.12]';
%m=1.0e+03 *[0.1289;0.5663;1.0859;1.1870;0.8092;0.3522;0.0956;0.0148];
%m=[1;5.1503;13.301;22.2016;25.7518;21.6013;12.8005;5.2001];
M=[zeros(9,1) eye(9);-m'];
N=[zeros(9,1); 1];


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
eta_1=eta1(1); eta_2=eta1(2); eta_3=eta1(3); eta_4=eta1(4); eta_5=eta1(5);
eta_6=eta1(6); eta_7=eta1(7); eta_8=eta1(8); eta_9=eta1(9); eta_10=eta1(10);

a_1=a1(1); a_2=a1(2); a_3=a1(3); a_4=a1(4);  a_5=a1(5);

m_1=m(1); m_2=m(2); m_3=m(3); m_4=m(4); m_5=m(5);
m_6=m(6); m_7=m(7); m_8=m(8); m_9=m(9); m_10=m(10);

 Phi=[0 1 0 0 0;
      0 0 1 0 0;
      0 0 0 1 0;
      0 0 0 0 1;
    -a_1 -a_2 -a_3 -a_4 -a_5];

E=Phi^10+m_10*Phi^9+m_9*Phi^8+m_8*Phi^7+m_7*Phi^6+m_6*Phi^5+m_5*Phi^4+Phi^3*m_4+Phi^2*m_3+Phi*m_2+eye(5)*m_1;


Theta=[eta_1 eta_2 eta_3 eta_4 eta_5;
       eta_2 eta_3 eta_4 eta_5 eta_6;
       eta_3 eta_4 eta_5 eta_6 eta_7;
       eta_4 eta_5 eta_6 eta_7 eta_8;
       eta_5 eta_6 eta_7 eta_8 eta_9];



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



rho=1;%+1*e^2


dota1= -1*Theta'*(Theta*a1+[eta_6;eta_7;eta_8;eta_9;eta_10]);

 

CHI=[1 0 0 0 0]*E*[eta_1;eta_2;eta_3;eta_4;eta_5];

u=-k1*rho*e+CHI*0;
k1dot=rho*e^2;
doteta1=M*eta1+N*u;

Da=0.072;B=8;beta=0.3;gamma=20;
vdot=omega*[0 1;-1 0]*v;
dotx1=-x1+Da*(1-x1)*exp(x2/(1+x2/gamma));
dotx2=-x2+B*Da*(1-x1)*exp(x2/(1+x2/gamma))+beta*(u-x2)+v(1);

t
xdot=vertcat(vdot,dotx1,dotx2,doteta1,dota1,k1dot);
