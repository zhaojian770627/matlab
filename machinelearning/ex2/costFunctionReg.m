function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

m=length(X);
z=X*theta;
h=sigmoid(z);
J=-1*sum(y.*log(h)+(1-y).*log(1-h))/m + sum(theta^2);
Xi=X',
grad0=(Xi(1,:) *(h-y))./m;
gradL=(Xi(2:ebd,:) *(h-y))./m+lambda/m*grad(2:end,:);
grad=[grad0;gradL]
% =============================================================

end
