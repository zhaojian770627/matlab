% 求标准差
% 类似std(A)
% 输入X 为数组
% 按 N-1处理
function y=mystd(X)
    mu=mean(X);
    m=length(X);
    total=0;
    for i=1:m
        total=total+(X(i)-mu)^2;
    end
    y=sqrt(total/(m-1));
end