% 牛顿差商差值方法
% 计算差值多项式的系数
% 输入:x和y是包含n个数据点的x和y坐标的向量
% 输出:嵌套形式的插值多项式系数c
% 使用nest.m计算插值多项式
function c=newtdd(x,y,n)
for j=1:n
    v(j,1)=y(j); % 填入牛顿三角形的y列
end
for i=2:n   % 对于第i列
    for j=1:n+1-i % 从顶端到底端填入列元素
        v(j,i)=(v(j+1,i-1)-v(j,i-1))/(x(j+i-1)-x(j));
    end
end
for i=1:n
    c(i)=v(1,i);    % 从三角形顶端读
end                 % 输出系数
        