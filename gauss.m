%���� ��˹-���¶�����
%����: ��ȫ�������ϡ�����a, r.h.s, b
%���: �� x
function x=gauss(a,b,k)
n=length(b);   
d=diag(a);     
x=zeros(n,1);
r=a-diag(d);
for j=1:k
    for i=1:n
        x(i)=(b(i)-r(i,:)*x)/d(i);
    end
end