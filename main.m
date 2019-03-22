clear
clc

n=randn(1000,1000);
h=ones(1,20);
X=conv2(n,h);

[rows, cols]=size(X);

rand_wavefoms=randi(rows,1,5);%generate five random numbers that correspond to a rondom wave forms

for i=1:5
    subplot(5,1,i)
    plot(X(rand_wavefoms(i),:))
    grid on
%     xlabel('time (t)');
%     ylabel('ampl') 
end
sgtitle('Five random wave forms from the ensamble')

figure 
Smean=statmean(X);
plot(Smean);
grid on
title ('statistical mean')
xlabel('time (t)');
ylabel('ampl') 

figure 
subplot(2,1,1)
Rx_Tao_first=ACF_first(X);
plot(Rx_Tao_first);
grid on
title ('ACF between the first sample and the rest')
xlabel('\tau');
ylabel('ampl') 

subplot(2,1,2)
Rx_Tao_last=ACF_last(X);
plot(Rx_Tao_last);
grid on
title ('ACF between the first sample and the rest')
xlabel('\tau');
ylabel('ampl') 

disp ('the time mean of the first wave form :');
Tmean=timemean(X,1);
disp (Tmean);

figure
T_ACF=timeACF(X,1);
plot(Rx_Tao_last);
grid on
title ('the time ACF of the first wave form')
xlabel('\tau');
ylabel('ampl') 









