function  Tmean=timemean(X,n)% this function returns the time mean of the nth waveform

wave=X(n,:);
Tmean=sum(wave,2)/length(wave);% sum every row and the devide over their total number (no.columns)

end