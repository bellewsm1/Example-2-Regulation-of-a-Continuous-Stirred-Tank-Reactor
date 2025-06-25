syms 'Q_%d' 'eta_%d' [1 8]
syms 'a_%d' [1 4]

Theta=[eta_1 eta_2 eta_3 eta_4;
       eta_2 eta_3 eta_4 eta_5;
       eta_3 eta_4 eta_5 eta_6;
       eta_4 eta_5 eta_6 eta_7];

Q=[Q_1 Q_2 Q_3 Q_4;
   Q_2 Q_3 Q_4 Q_5;
   Q_3 Q_4 Q_5 Q_6;
   Q_4 Q_5 Q_6 Q_7];


 Q.'*Theta+Theta*Q.'

 [a_1 a_2 a_3 a_4]*(Q.'*Theta+Theta*Q.')*[a_1;a_2;a_3;a_4]