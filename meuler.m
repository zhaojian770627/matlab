% 程序6.1 求解初值问题的欧拉方法
% 使用ydot.m计算微分方程右侧函数的值rhs
% 输入: 区间inter,初值y0,步骤n
% 输出：时间步t,解y
% 使用实例:meuler([0 1],1,10):
function [t,y]=meuler(inter,y0,n)
t(1)=inter(1);y(1)=y0;
h=(inter(2)-inter(1))/n;
for i=1:n
    t(i+1)=t(i)+h;
    y(i+1)=eulerstep(t(i),y(i),h);
end
plot(t,y)