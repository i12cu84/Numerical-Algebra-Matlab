U=[1 2 -1;1 -1 5;4 1 -2];
b=[3;0;2];
for z=1:2
    for i=z:3
        if abs(U(z,z)) < abs(U(i,z))
            for j=1:3
                y=U(z,j)
                U(z,j)=U(i,j)
                U(i,j)=y
            end
        end
    end
end
i=1
for j=1:3-i
    a=U(1,2)/U(1,1)
U(j+i,1)=0
U(j+i,2)=U(j+1,2)-a*U(1,2)
    U(j+i,3)=U(j+1,3)-a*U(1,3)
    b(j+i,1)=b(j+1,1)-a*b(1,1)
end
i=2
for j=1:1
a=U(3,2)/U(2,2)
U(j+i,1)=0
U(j+i,2)=0
U(j+i,3)=U(j+i,3)-a*U(1,3)
    b(j+i,1)=b(j+i,1)-a*b(3,1)
end
t=[(b(1,1)-(b(2,1)-U(2,3)*b(3,1)/U(3,3))/U(2,2)*U(1,2)-b(3,1)/U(3,3)*U(1,3))/U(1,1),
    (b(2,1)-U(2,3)*b(3,1)/U(3,3))/U(2,2),
    b(3,1)/U(3,3)]
