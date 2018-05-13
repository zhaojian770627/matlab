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
step=0
while(b-a)/2>tol
    step=step+1
    c=(a+b)/2;
    fc=f(c);
    if(fc==0)
        break
    end
    if sign(fc)*sign(fa)<0 % a��c�γ�һ���µ�����
        b=c;fb=fc;
    else
        a=c;fa=fc;
    end
end
fprintf('Step:%d',step)
xc=(a+b)/2;