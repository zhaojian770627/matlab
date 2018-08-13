% 程序 格拉姆-施密特正交
% A 向量矩阵
% n 向量个数
function [q,r]=gram2(A,n)
for j=1:n
    y=A(:,j);
    for i=1:j-1
        r(i,j)=q(:,i)'*y;
        y=y-r(i,j)*q(:,i);
    end
    r(j,j)=norm(y);
    q(:,j)=y/r(j,j);
end