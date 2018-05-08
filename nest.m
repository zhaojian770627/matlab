%����0.1 Ƕ�׳˷�
%ʹ�û��ɷ�����Ƕ����ʽ�������ʽ��ֵ
%����:
%   ����ʽ�Ľ�d
%   d+1��ϵ�����ɵ�����c(��һ��Ԫ��Ϊ������)
%   x������Ҫ������ֵ��xλ��
%   �����Ҫ�Ļ�������d�����㹹�ɵ�����b
function y=nest(d,c,x,b)
if nargin<4,b=zeros(d,1);end
y=c(d+1);
for i=d:-1:1
    y=y.*(x-b(i))+c(i);
end

%����1.1 ���ַ�
%����f(x)�Ľ��ƽ�
%����:�������f;a,bʹ��f(a)*f(b)<0,�Լ��ݲ�tol
%���:���ƽ�
function xc=bisect(f,a,b,tol)
fa=f(a);
fb=f(b);
if(sign(fa)*sign(fb))>=0
    error('f(a)f(b)<0 not satisfied!')
end
while(b-a)/2>tol
    c=(a+b)/2;
    fc=f(c);
    if(fc==0)
        break
    end
    if(sign(fc)*sign(fa)<0 % a��c�γ�һ���µ�����
        b=c;fb=fc;
    else
        a=c;fa=fc;
    end
end
xc=(a+b)/2;
    