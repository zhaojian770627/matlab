%程序 复合辛普森积分
%计算f的积分
%输入:f 函数
%     a 上限
%     b 下限
%     m 划分子区间数
%输出:近似解xc
function xc=fhxpsjf(f,a,b,m)
h=(b-a)/(2*m);
t1=0;
t2=0;
for i=1:m
    t1=t1+subs(f,(a+(2*i-1)*h));
    if i< m
        t2=t2+subs(f,(a+(2*i)*h));
    end
end
xc=eval(h/3*(subs(f,a)+subs(f,b)+4*t1+2*t2));