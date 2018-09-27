function [X mu sigma] = featureNormalize(X,y,theta)
X=[];
mu=mean(X);
sigma=std(X);
end