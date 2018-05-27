n=10;
A=zeros(n); 
M=[1 -4 6 -4 1]
for i=1:n
    if i==1
        A(i,1:4)=M1;
    elseif i==2 
        A(i,1:4)=[-4 6 -4 1];
    elseif i==n-1
        A(i,n-3:n)=[16/17 -60/17 72/17 -28/17] 
    elseif i==n 
        A(i,n-3:n)=[-12/17 96/17 -156/17 72/17] 
    else
        for j=-2:1:2
            if (i+j<=n)
                A(i,i+j)=M(j+3)
            end
        end
    end; 
end