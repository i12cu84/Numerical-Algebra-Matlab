A=[2 -1 -1;-1 2 0;-1 0 1];
b=[0 1 0];
x0=[0 0 0];
t=4;
n=3;
x=zeros(n+1,t+1);
x(1,2:t+1)=1:t;
x(2:n+1,1)=x0;
r(:,1)=b'-A*x(2:n+1,1);
p(:,1)=r(:,1);
for i = 1:t
    a(i)=dot(r(:,i),p(:,i))/dot(A*p(:,i),p(:,i)); 
    x(2:n+1,i+1)=x(2:n+1,i)+a(i)*p(:,i);
    r(:,i+1)=b'-A*(x(2:n+1,i)+a(i)*p(:,i));
    beta(i)=-dot(r(:,i+1),A*p(:,i))/dot(p(:,i),A*p(:,i));
    p(:,i+1)=r(:,i+1)+beta(i)*p(:,i);
    disp(['tip',num2str(i),'output:']);
    x(2:n+1,i+1)
end
