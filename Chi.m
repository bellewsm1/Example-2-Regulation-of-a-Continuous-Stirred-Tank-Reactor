function [x] = Chi(eta,m)

eta_1=eta(1); eta_2=eta(2); eta_3=eta(3); eta_4=eta(4);
eta_5=eta(5); eta_6=eta(6); eta_7=eta(7); eta_8=eta(8);

m_1=m(1); m_2=m(2); m_3=m(3); m_4=m(4); 
m_5=m(5); m_6=m(6); m_7=m(7); m_8=m(8);

% Ta_1 = eta_5*(eta_7*eta_4^2 - 2*eta_4*eta_5*eta_6 + eta_5^3 - eta_3*eta_7*eta_5 + eta_3*eta_6^2) - eta_8*(eta_6*eta_3^2 - 2*eta_3*eta_4*eta_5 + eta_4^3 - eta_2*eta_6*eta_4 + eta_2*eta_5^2) - eta_7*(- eta_7*eta_3^2 + eta_6*eta_3*eta_4 + eta_3*eta_5^2 - eta_4^2*eta_5 + eta_2*eta_7*eta_4 - eta_2*eta_6*eta_5) - eta_6*(- eta_4^2*eta_6 + eta_4*eta_5^2 + eta_3*eta_7*eta_4 - eta_3*eta_5*eta_6 - eta_2*eta_7*eta_5 + eta_2*eta_6^2);
% Ta_2 = eta_8*(- eta_3^2*eta_5 + eta_3*eta_4^2 + eta_2*eta_6*eta_3 - eta_2*eta_4*eta_5 - eta_1*eta_6*eta_4 + eta_1*eta_5^2) - eta_5*(- eta_4^2*eta_6 + eta_4*eta_5^2 + eta_3*eta_7*eta_4 - eta_3*eta_5*eta_6 - eta_2*eta_7*eta_5 + eta_2*eta_6^2) - eta_7*(eta_4^3 - eta_1*eta_4*eta_7 + eta_1*eta_5*eta_6 + eta_2*eta_3*eta_7 - eta_2*eta_4*eta_6 - eta_3*eta_4*eta_5) + eta_6*(eta_7*eta_3^2 - 2*eta_3*eta_4*eta_6 + eta_5*eta_4^2 + eta_1*eta_6^2 - eta_1*eta_5*eta_7);
% Ta_3 = eta_8*(- eta_6*eta_2^2 + eta_5*eta_2*eta_3 + eta_2*eta_4^2 - eta_3^2*eta_4 + eta_1*eta_6*eta_3 - eta_1*eta_5*eta_4) - eta_5*(- eta_7*eta_3^2 + eta_6*eta_3*eta_4 + eta_3*eta_5^2 - eta_4^2*eta_5 + eta_2*eta_7*eta_4 - eta_2*eta_6*eta_5) - eta_6*(eta_4^3 - eta_1*eta_4*eta_7 + eta_1*eta_5*eta_6 + eta_2*eta_3*eta_7 - eta_2*eta_4*eta_6 - eta_3*eta_4*eta_5) + eta_7*(eta_7*eta_2^2 - 2*eta_2*eta_4*eta_5 + eta_3*eta_4^2 + eta_1*eta_5^2 - eta_1*eta_3*eta_7);
% Ta_4 = eta_8*(eta_5*eta_2^2 - 2*eta_2*eta_3*eta_4 + eta_3^3 - eta_1*eta_5*eta_3 + eta_1*eta_4^2) - eta_5*(eta_6*eta_3^2 - 2*eta_3*eta_4*eta_5 + eta_4^3 - eta_2*eta_6*eta_4 + eta_2*eta_5^2) + eta_7*(- eta_6*eta_2^2 + eta_5*eta_2*eta_3 + eta_2*eta_4^2 - eta_3^2*eta_4 + eta_1*eta_6*eta_3 - eta_1*eta_5*eta_4) + eta_6*(- eta_3^2*eta_5 + eta_3*eta_4^2 + eta_2*eta_6*eta_3 - eta_2*eta_4*eta_5 - eta_1*eta_6*eta_4 + eta_1*eta_5^2);

%ThetaDet = - eta_7*eta_2^2*eta_5 + eta_2^2*eta_6^2 + 2*eta_7*eta_2*eta_3*eta_4 - 2*eta_2*eta_3*eta_5*eta_6 - 2*eta_2*eta_4^2*eta_6 + 2*eta_2*eta_4*eta_5^2 - eta_7*eta_3^3 + 2*eta_3^2*eta_4*eta_6 + eta_3^2*eta_5^2 - 3*eta_3*eta_4^2*eta_5 + eta_1*eta_7*eta_3*eta_5 - eta_1*eta_3*eta_6^2 + eta_4^4 - eta_1*eta_7*eta_4^2 + 2*eta_1*eta_4*eta_5*eta_6 - eta_1*eta_5^3;

Theta=[eta_1 eta_2 eta_3 eta_4;
       eta_2 eta_3 eta_4 eta_5;
       eta_3 eta_4 eta_5 eta_6;
       eta_4 eta_5 eta_6 eta_7];

%ThetaAd=adjoint(Theta);
ThetaAd11 = - eta_7*eta_4^2 + 2*eta_4*eta_5*eta_6 - eta_5^3 + eta_3*eta_7*eta_5 - eta_3*eta_6^2;
ThetaAd12 = - eta_4^2*eta_6 + eta_4*eta_5^2 + eta_3*eta_7*eta_4 - eta_3*eta_5*eta_6 - eta_2*eta_7*eta_5 + eta_2*eta_6^2;
ThetaAd13 = - eta_7*eta_3^2 + eta_6*eta_3*eta_4 + eta_3*eta_5^2 - eta_4^2*eta_5 + eta_2*eta_7*eta_4 - eta_2*eta_6*eta_5;
ThetaAd14 = eta_6*eta_3^2 - 2*eta_3*eta_4*eta_5 + eta_4^3 - eta_2*eta_6*eta_4 + eta_2*eta_5^2;
ThetaAd21 = - eta_4^2*eta_6 + eta_4*eta_5^2 + eta_3*eta_7*eta_4 - eta_3*eta_5*eta_6 - eta_2*eta_7*eta_5 + eta_2*eta_6^2;
ThetaAd22 = - eta_7*eta_3^2 + 2*eta_3*eta_4*eta_6 - eta_5*eta_4^2 - eta_1*eta_6^2 + eta_1*eta_5*eta_7;
ThetaAd23 = eta_4^3 - eta_1*eta_4*eta_7 + eta_1*eta_5*eta_6 + eta_2*eta_3*eta_7 - eta_2*eta_4*eta_6 - eta_3*eta_4*eta_5;
ThetaAd24 = eta_3^2*eta_5 - eta_3*eta_4^2 - eta_2*eta_6*eta_3 + eta_2*eta_4*eta_5 + eta_1*eta_6*eta_4 - eta_1*eta_5^2;
ThetaAd31 = - eta_7*eta_3^2 + eta_6*eta_3*eta_4 + eta_3*eta_5^2 - eta_4^2*eta_5 + eta_2*eta_7*eta_4 - eta_2*eta_6*eta_5;
ThetaAd32 = eta_4^3 - eta_1*eta_4*eta_7 + eta_1*eta_5*eta_6 + eta_2*eta_3*eta_7 - eta_2*eta_4*eta_6 - eta_3*eta_4*eta_5;
ThetaAd33 = - eta_7*eta_2^2 + 2*eta_2*eta_4*eta_5 - eta_3*eta_4^2 - eta_1*eta_5^2 + eta_1*eta_3*eta_7;
ThetaAd34 = eta_6*eta_2^2 - eta_5*eta_2*eta_3 - eta_2*eta_4^2 + eta_3^2*eta_4 - eta_1*eta_6*eta_3 + eta_1*eta_5*eta_4;
ThetaAd41 = eta_6*eta_3^2 - 2*eta_3*eta_4*eta_5 + eta_4^3 - eta_2*eta_6*eta_4 + eta_2*eta_5^2;
ThetaAd42 = eta_3^2*eta_5 - eta_3*eta_4^2 - eta_2*eta_6*eta_3 + eta_2*eta_4*eta_5 + eta_1*eta_6*eta_4 - eta_1*eta_5^2;
ThetaAd43 = eta_6*eta_2^2 - eta_5*eta_2*eta_3 - eta_2*eta_4^2 + eta_3^2*eta_4 - eta_1*eta_6*eta_3 + eta_1*eta_5*eta_4;
ThetaAd44 = - eta_5*eta_2^2 + 2*eta_2*eta_3*eta_4 - eta_3^3 + eta_1*eta_5*eta_3 - eta_1*eta_4^2;

 
ThetaAd=[ThetaAd11 ThetaAd12 ThetaAd13 ThetaAd14;
        ThetaAd21 ThetaAd22 ThetaAd23 ThetaAd24;
        ThetaAd31 ThetaAd32 ThetaAd33 ThetaAd34;
        ThetaAd41 ThetaAd42 ThetaAd43 ThetaAd44];

ThetaDet=- eta_7*eta_2^2*eta_5 + eta_2^2*eta_6^2 + 2*eta_7*eta_2*eta_3*eta_4 - 2*eta_2*eta_3*eta_5*eta_6 - 2*eta_2*eta_4^2*eta_6 + 2*eta_2*eta_4*eta_5^2 - eta_7*eta_3^3 + 2*eta_3^2*eta_4*eta_6 + eta_3^2*eta_5^2 - 3*eta_3*eta_4^2*eta_5 + eta_1*eta_7*eta_3*eta_5 - eta_1*eta_3*eta_6^2 + eta_4^4 - eta_1*eta_7*eta_4^2 + 2*eta_1*eta_4*eta_5*eta_6 - eta_1*eta_5^3;%det(Theta);


epsilon1= 0.1;   

varsigma = 1+ThetaDet^(2)-epsilon1^(2);
varpi    = expfn(1-varsigma)/(expfn(varsigma)+expfn(1-varsigma));

% ThetaDet
% (ThetaDet/(ThetaDet^(2)+varpi))
%(ThetaDet/(ThetaDet^(2)+varpi))

TA = - ThetaAd*[eta_5;eta_6;eta_7;eta_8];

%(ThetaDet/(ThetaDet^(2)+varpi))

 a_1 = TA(1)*(ThetaDet/(ThetaDet^(2)+varpi));
 a_2 = 0;
 a_3 = TA(3)*(ThetaDet/(ThetaDet^(2)+varpi));
 a_4 = 0;

PE1 = a_1^2 - a_1*a_3^2 + m_7*a_1*a_3 - m_5*a_1 + m_1;
PE2 = m_2 - a_1*m_6 + a_1*a_3*m_8;
PE3 = m_3 + a_1*a_3 - a_3*m_5 + a_3*(- a_3^2 + a_1) - m_7*(- a_3^2 + a_1);
PE4 = m_4 - a_3*m_6 - m_8*(- a_3^2 + a_1);


x = [PE1 PE2 PE3 PE4]*[eta_1;eta_2;eta_3;eta_4];

%;
%;