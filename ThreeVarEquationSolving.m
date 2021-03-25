clc;
clear;
close all;
a=[5 -1 1 10; 2 8 -1 11;-1 1 4 3];
disp(a)
x=zeros(3,1);
k1=a(end-2,end-3)/a(end-1,end-3);
a(end-1,:)=a(end-2,:)-k1*a(end-1,:);
disp(a)

   
k2=a(end-2,end-3)/a(3,1);
a(3,:)=a(1,:)-k2*a(3,:);

if a(3,2)~=0
  k3= a(2,2)/a(3,2);
  a(3,:)=a(2,:)-k3*a(3,:);
  x(3,1)=a(3,4)/a(3,3);
else 
   
   x(3,1)=a(3,4)/a(3,3); 
end

disp(a)
x(2,1)=(a(2,4)-a(2,3)*x(3,1))/a(2,2);
x(1,1)=(a(1,4)-a(1,2)*x(2,1)-a(1,3)*x(3,1))/a(1,1);
disp(x);



