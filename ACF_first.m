function Rx_Tao=ACF_first(X)


col=size(X,2);

Rx_Tao=zeros(1,col);
for i=1:col%this function loops on the elements of the wave form
tao=i;
    Rx_Tao(tao) =statACF(X,1,i);
end


end