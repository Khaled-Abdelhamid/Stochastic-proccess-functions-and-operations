function  result=timeACF(X,n)% get the time auto correlation for every possible tao

% take the sum of the multiplication produt of the
% two signals and then devide by its total number
wave=X(n,:);
len=length(wave);
result = zeros(1,len);

for i=1:len
    tao=i-1;
    for j=1:len-tao 
        result(i)=result(i)+ wave(j)*wave(j+tao);
    end
    result(i)=result(i)/(len-tao);
end



end