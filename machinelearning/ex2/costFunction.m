function [cost, grad] = costFunction(theta, X, y)
m=length(X);
z=X*theta;
h=sigmoid(z);
cost=-1*sum(y.*log(h)+(1-y).*log(1-h))/m;
grad=(X'*(h-y))./m;
end