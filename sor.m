%���� SOR �����ɳڷ���
%����: ��ȫ�������ϡ�����a, r.h.s, b
%���: �� x
function x=sor(a,b,w,k)
n=length(b);   
d=diag(a);     
x=zeros(n,1);
r=a-diag(d);
for j=1:k
    for i=1:n
        x(i)=(1-w)*x(i)+w*(b(i)-r(i,:)*x)/d(i);
    end
end