%���� ��˹��ȥ���ⷽ����
%����:      A ϵ������
%B ֵ����
%n ����
%���:������
function xc=gs(A,B,n)
for j=1:n-1
    if abs(A(j,j))<eps; error('zero pivot encountered'); end
    for i=j+1:n
        mult=A(i,j)/A(j,j);
        for k=j+1:n
            A(i,k)=A(i,k)-mult*A(j,k);
        end
        B(i)=B(i)-mult*B(j);
    end
end

for i=n:-1:1
    for j=i+1:n
        B(i)=B(i)-A(i,j)*x(j);
    end
    x(i)=B(i)/A(i,i);
end
xc=x;