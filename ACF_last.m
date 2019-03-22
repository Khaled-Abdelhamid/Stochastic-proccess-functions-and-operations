function Rx_Tao=ACF_last(X)

col=size(X,2);

Rx_Tao=zeros(1,col);
for i=0:col-1%this function loops on the elements of the wave form
    tao=i;
        Rx_Tao(tao+1) =statACF(X,col,col-tao);% correlating the last sample with the rest
end


end