%����2.1 �ſɱȷ���
%����: ��ȫ�������ϡ�����a, r.h.s, b
%���: �� x
function x=jacobj(a,b,k)
n=length(b);    % ȷ��n
d=diag(a);      % ��ȡa�ĶԽ���Ԫ��
r=a-diag(d);    % rΪ����
x=zeros(n,1);   % ��ʼ������x
for j=1:k
    x=(b'-r*x)./d;
end
