%程序 复合中点积分
%计算f的积分
%输入:f 函数
%     a 上限
%     b 下限
%     m 划分子区间数
%输出:近似解xc
function xc=fhzdjf(f,a,b,m)
h=(b-a)/m;
t=0;
w=(a+h)/2;
t=t+subs(f,w);
for i=2:m
   w=w+h;
   t=t+subs(f,w);
end
xc=eval(h*t);