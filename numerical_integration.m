clear all
close all
clc

f=@(x) exp(x).*sin(x) + sin(x).^5;
a=input('Pls Enter a :');
b=input('Pls Enter b :');
if(a>b)
    error(' a > b ')
end
%% Simpson's Integration
n=input('Pls Enter Number of Point :');
if(mod(n-1,2)~=0 || n<3)
    error('Number of point is mistake')
end

x=linspace(a,b,n-1);
I=0;
for counter=1:length(x)-2
    I=I+(x(counter+1)-x(counter))*(f(x(counter))+4*f(x(counter+1))+f(x(counter+2)))/6;
end
Integral=[num2str(I),' The integral value is Simpsons method in the range of ',num2str(a),' to ',num2str(b),...
    ' and the number of points ',num2str(n)];
disp(Integral)

%% trapezoidal Method
n=input('Pls Enter Number of Point :');
if(n<3)
    error('Number of point is mistake')
end
x=linspace(a,b,n-1);

I=f(x(1));
for counter=2:length(x)-1
    I=I+2*f(x(counter));
end
I=I+f(x(end));
I=(x(counter+1)-x(counter))*I/2;
Integral=[num2str(I),' The integral value is trapezoidals method in the range of ',num2str(a),' to ',num2str(b),...
    ' and the number of points ',num2str(n)];
disp(Integral)

%% Composite Midpoint Method
n=input('Pls Enter Number of Point :');
if(mod(n-1,2)~=0 || n<2)
    error('Number of point is mistake')
end

x=linspace(a,b,n-1);

I=0;
for counter=1:(n-1)/2
    I=I+2*(x(counter+1)-x(counter))*f(x(2*counter-1));
end
Integral=[num2str(I),' The integral value is Composite Midpoint method in the range of ',num2str(a),' to ',num2str(b),...
    ' and the number of points ',num2str(n)];
disp(Integral)

%% function Matlab
I=integral(f,a,b);
Integral=[num2str(I),' The integral value is Function Matlab in the range of ',num2str(a),' to ',num2str(b)];
disp(Integral)
