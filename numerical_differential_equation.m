clear all
close all
clc

h=0.2;
x=0:h:2;
y(1)=0.1;
f=@(x,y) exp(x)*y^3;

for counter=2:length(x)
    y(counter)=y(counter-1)+h*f(x(counter-1),y(counter-1));
end

figure()
plot(x,y,'r-')
xlabel('X')
ylabel('Y')