function result=get_total_power(X,n)% get the power of the nth wave form
res=timeACF(X,n);
result=res(1);


end