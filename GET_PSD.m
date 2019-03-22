function psd=GET_PSD(X)


Rx_Tao=ACFfirst(X);

% col=size(X,2);
% 
% Rx_Tao=zeros(1,col);
% for i=1:col%this function loops on the elements of the wave form
%         Rx_Tao(tao) =statACF(X,1,i);
% end

psd=fft(Rx_Tao);




end