% 傅里叶插值
% 使用三角函数pltr在[c,d]区间上插值几个点
% 并画出在p(>=n)个均匀分布的点上的插值
% 输入:区间[c,d]数据点x
% 数据个数n,偶数p>=n
% 输出:插值得到的数据点xp
function xp=dftinterp(inter,x,n,p)
c=inter(1);
d=inter(2);
t=c+(d-c)*(0:n-1)/n;
tp=c+(d-c)*(0:p-1)/p;
y=fft(x); % 应用DFT
yp=zeros(p,1); % yp保存ifft的系数
yp(1:n/2+1)=y(1:n/2+1); % 将频率n由n改为p
yp(p-n/2+2:p)=y(n/2+2:n); % 对上半部分做同样的处理
xp=real(ifft(yp))*(p/n); % 求逆以重建数据
plot(t,x,'o',tp,xp); % 画出数据点以及对应插值