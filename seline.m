%���� ���߷����ⷽ��
%����:�������g,��ʼ����x0,x1 ��С��� tol ����� max
%���:���ƽ�xc
function xc=seline(g,x0,x1,tol,max)
x(1)=x0;
x(2)=x1;
x(3)=x(2) - g(x(2))*(x(2)-x(1))/(g(x(2))-g(x(1)));
i=3
while abs(x(i)-x(i-1))>tol & i<max
    x(i+1)=x(i)-g(x(i))*(x(i)-x(i-1))/(g(x(i))-g(x(i-1)));
    i=i+1
end
x
fprintf('Step:%d',i);
xc=x(i)