function v = computeCost(X,y,theta)
m=length(X);
v=sum((X*theta-y).^2)/(2*m);
end