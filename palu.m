%���� PA=LU�ֽⷽ����
%����:      A ϵ������
%           B ֵ����
%           n ����
%���:      ������
function xc=palu(A,B,n)
P=eye(n);    % n�׵�λ��
for j=1:n-1
    % Ѱ������в�����,�Խ�������
    mv=A(j,j);
    mr=j;
    for i=j+1:n
        if A(i,j)>mv
            mv=A(i,j);
            mr=i;
        end
    end
    if mr~=j
        % ������λ��
        P([j mr],:)=P([mr j],:);
        % ����ϵ������
        A([j mr],:)=A([mr j],:);
    end  
        
    % ��A����
    for i=j+1:n
        mult=A(i,j)/A(j,j);
        A(i,j)=mult;
        for k=j+1:n
            A(i,k)=A(i,k)-mult*A(j,k);
        end
    end
end
% LUx=b
% Lc=b �� c
c=zeros(1,3);
PB=P*B';
for i=1:n
    for j=1:i-1
        PB(i)=PB(i)-c(j)*A(i,j);
    end
    c(i)=PB(i);
end

% Ux=c �� x
for i=n:-1:1
    for j=i+1:n
        c(i)=c(i)-A(i,j)*x(j);
    end
    x(i)=c(i)/A(i,i);
end
xc=x;