%���� ţ�ٷ����ⷽ��
%����:�������g,����gd,��ʼ����x0,��С��� tol ����� max
%���:���ƽ�xc
function xc=norton(g,gd,x0,tol,max)
x(1)=x0;
x(2)=x(1)-g(x(1))/gd(x(1));
i=2;
while abs(x(i)-x(i-1))>tol & i<max
    i=i+1;
    x(i)=x(i-1)-g(x(i-1))/gd(x(i-1));
end
x
fprintf('Step:%d',i);
xc=x(i)