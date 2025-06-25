%figure(1)

%plot(t1,x1(1:2,:))

%figure(2)

%plot3(x1(3,:),x1(4,:),t1)
%grid on
 m=length(t1);
for i=1:m
    x1=xx1(3,i);
    x2=xx1(4,i);
    eta1=xx1(5:14,i);
    a1=xx1(15:19,i);
    k1=xx1(20,i);

    omega=0.5;%1;%;

    e=x2-10;

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

u(i)=-k1*rho*e+CHI;


end


figure(2)
set(gcf,'unit','normalized','position',[0.2,0.2,0.44,0.4]);
plot(t1,xx1(4,:))

cl=legend('$$ x_2(t) $$');
 set(cl,'interpreter','latex');
cc=ylabel('$$x_2(t)$$','Rotation',0);
set(cc,'interpreter','latex');
xlabel('Time(Second)')
%axis([0 80 -2 4.5]);
mth=length(t1);

print('TrackingError_CSTR','-depsc')


figure(3)
set(gcf,'unit','normalized','position',[0.2,0.2,0.44,0.4]);
plot(t1,10-xx1(4,:))

cl=legend('$$ e(t) $$');
 set(cl,'interpreter','latex');
cc=ylabel('$$e(t)$$','Rotation',0);
set(cc,'interpreter','latex');
xlabel('Time(Second)')
%axis([0 80 -2 4.5]);
mth=length(t1);

print('TrackingError_CSTR','-depsc')

figure(4)
set(gcf,'unit','normalized','position',[0.2,0.2,0.44,0.4]);
plot(t1,xx1(15:19,:))
%axis([0 2000 -2 4.5]);
cl=legend('$$ \hat{a}_1 $$','$$ \hat{a}_2 $$','$$ \hat{a}_3 $$','$$ \hat{a}_4 $$','$$ \hat{a}_5 $$');
set(cl,'interpreter','latex');
cc=ylabel('$$\hat{a}(t)$$','Rotation',0);
set(cc,'interpreter','latex');
xlabel('Time(Second)')
print('EstimationError_CSTR','-depsc')

figure(5)
set(gcf,'unit','normalized','position',[0.2,0.2,0.44,0.4]);
plot(t1,u)
%axis([0 2000 -2 4.5]);
%cl=legend('$$ \hat{a}_1 $$','$$ \hat{a}_2 $$','$$ \hat{a}_3 $$','$$ \hat{a}_4 $$','$$ \hat{a}_5 $$');
%set(cl,'interpreter','latex');
cc=ylabel('$$u(t)$$','Rotation',0);
set(cc,'interpreter','latex');
xlabel('Time(Second)')
print('ControlInput_CSTR','-depsc')


figure
plot3(t1(1), xx1(3,1), xx1(4,1),'*')
hold on 
plot3(t1, xx1(3,:), xx1(4,:))
xlabel('time (s)')
ylabel('$x_1(t)$', 'Interpreter', 'latex','Rotation',0);
zlabel('$x_2(t)$', 'Interpreter', 'latex','Rotation',0);
grid on
print('phares_Trajectory','-depsc')
