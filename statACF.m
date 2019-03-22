function  sRx=statACF(X,i,j)

% take the sum of the multiplication produt of the 
% two signals and then devide by its total number

sRx = sum(X(:,i).*X(:,j))/size(X,1);


end