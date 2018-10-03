function p = predict(theta, X)
    k = find(sigmoid( X * theta) >= 0.5 );
    p(k)= 1;
end
