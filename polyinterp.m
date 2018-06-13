% 多项式插值程序
% 点击MATLAB图形定位数据点
% 继续加入更多的点
% 按return键结束程序
function y0=polyinterp(x,y,x0)
k=length(x);
c=newtdd(x,y,k);   
y0=nest(k-1,c,x0,x);
