%程序 PA=LU分解方程组
%输入:      A 系数矩阵
%           B 值矩阵
%           n 行数
%输出:      解向量
function [xc,A,P]=palu(varargin)
if nargin==3
    A=varargin{1};
    B=varargin{2};
    n=varargin{3};
elseif nargin==2
    A=varargin{1};
    n=varargin{2};   
end
P=eye(n);    % n阶单位阵
for j=1:n-1
    % 寻找最大行并交换,对角线以下
    mv=A(j,j);
    mr=j;
    for i=j+1:n
        if abs(A(i,j))>abs(mv)
            mv=A(i,j);
            mr=i;
        end
    end
    if mr~=j
        % 交换单位阵
        P([j mr],:)=P([mr j],:);
        % 交换系数矩阵
        A([j mr],:)=A([mr j],:);
    end  
        
    % 按A计算
    for i=j+1:n
        mult=A(i,j)/A(j,j);
        A(i,j)=mult;
        for k=j+1:n
            A(i,k)=A(i,k)-mult*A(j,k);
        end
    end
end
if nargin==2
    xc=[]
    return
end
% LUx=b
% Lc=b 解 c
c=zeros(1,3);
PB=P*B';
for i=1:n
    for j=1:i-1
        PB(i)=PB(i)-c(j)*A(i,j);
    end
    c(i)=PB(i);
end

% Ux=c 求 x
for i=n:-1:1
    for j=i+1:n
        c(i)=c(i)-A(i,j)*x(j);
    end
    x(i)=c(i)/A(i,i);
end
xc=x;