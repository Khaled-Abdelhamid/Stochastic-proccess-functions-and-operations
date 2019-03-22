clear
clc

t=0:.001:5;

Nt=randn(1,length(t));
Xt = cos(2*pi*t + pi/3);

Yt=Xt+Nt;

period=get_period(Yt);% this is the function that gets the period

subplot(2,1,1) 
T_ACF_Nt=timeACF(Nt,1);
plot(T_ACF_Nt);
grid on
title ('ACF of N(t)')
xlabel('\tau');
ylabel('ampl') 

subplot(2,1,2) 
T_ACF_Yt=timeACF(Yt,1);
plot(smooth(T_ACF_Yt));
grid on
title ('ACF of Y(t)')
xlabel('\tau');
ylabel('ampl') 
