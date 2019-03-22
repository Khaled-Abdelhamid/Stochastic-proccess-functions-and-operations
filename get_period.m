function period=get_period(Yt)

T_ACF_Yt=timeACF(Yt,1);

T_ACF_Yt=smooth(T_ACF_Yt);% in order to make the function work more robustly in getting the peaks , we smooth the curve before we apply the core code

h=(T_ACF_Yt);

[~,peaks]=findpeaks(h,'MinPeakProminence',(max(h)-min(h))/4);

period=mean(diff(peaks));




end