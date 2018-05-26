%���� PA=LU�ֽⷽ����
%����:      U ϵ������
%B ֵ����
%n ����
%���:������
function xc=palu(U,B,n)
L=zeros(n);  % L����
P=eye(n);    % n�׵�λ��
A=U;
for j=1:n-1
    % Ѱ������в�����,�Խ�������
    mv=U(j,j);
    mr=j;
    for i=j+1:n
        if U(j,i)>mv
            mv=U(j,i);
            mr=i;
        end
        if mr~=j
            % ������λ��
            P([j mr],:)=P([mr j],:)
        end  
    end
    for i=j+1:n
        mult=U(i,j)/U(j,j);
        L(i,j)=mult;
        U(i,j)=0;
        for k=j+1:n
            U(i,k)=U(i,k)-mult*U(j,k);
        end
    end
end
for j=1:n
    L(j,j)=1;
end
% LUx=b
% Lc=b �� c
c=zeros(1,3);
for i=1:n
    for j=1:i-1
        B(i)=B(i)-c(j)*L(i,j);
    end
    c(i)=B(i)/L(i,i);
end
% Ux=c �� x
for i=n:-1:1
    for j=i+1:n
        c(i)=c(i)-U(i,j)*x(j);
    end
    x(i)=c(i)/U(i,i);
end
P
xc=x;