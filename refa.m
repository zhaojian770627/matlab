%���� ��λ����
%����f(x)�Ľ��ƽ�
%����:�������f;a,bʹ��f(a)*f(b)<0,�Լ��ݲ�tol
%���:���ƽ�
function xc=ReFa(f,a,b,tol,max)
fa=f(a);
fb=f(b);
if(sign(fa)*sign(fb))>=0
    error('f(a)f(b)<0 not satisfied!')
end
step=0;
c=(b*f(a)-a*f(b))/(f(a)-f(b));
fc=f(c);
i=0
while i<max
    step=step+1;
    if fc==0 
        break;
    end
    c=(b*fa-a*fb)/(fa-fb);
    fc=f(c);
    if sign(fa)*sign(fc)<0 % a��c�γ�һ���µ�����
        b=c;
        fb=f(b);
    else
        a=c;
        fa=f(a);
    end
    i=i+1;
end
fprintf('Step:%d',step)
xc=c;