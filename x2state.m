figure(1)
set(gcf,'unit','normalized','position',[0.2,0.2,0.44,0.4]);
cx=plot(t1,xx1(4,:),t,x2(:,4))
hold on
cde=plot([0 50],[10 10],'k')

cl=legend([cx;cde],'$$ x_2(t) $$ with Nonparametric Internal Model','$$ x_2(t) $$ without Nonparametric Internal Model ','desired temperature');
 set(cl,'interpreter','latex');
cc=ylabel('$$x_2(t)$$','Rotation',0);
set(cc,'interpreter','latex');
xlabel('Time(Second)')
%axis([0 80 -2 4.5]);

print('X2_State_CSTR','-depsc')


figure(4)
set(gcf,'unit','normalized','position',[0.2,0.2,0.44,0.4]);
plot( t,x2(:,15:19))
%axis([0 2000 -2 4.5]);
hold on
plot(t1,xx1(15:19,:))