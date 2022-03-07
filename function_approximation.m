clear all
close all
clc

f=@(x) 1./(x.^2+5);
x=[-5 -4.5 -4 -3.5 -3 -2.5 -2 -1.5 -1 -0.5 0 0.5 1 1.5 2 2.5 3 3.5 4 4.5 5];
y=f(x);
n=length(x);

x1=min(x);
x2=max(x);
l=x2-x1;

X=linspace(x1-0.02*l,x2+0.02*l,1000);
Y=f(X);

P=0;
for counter1=1:n
    Buff=1;
    for counter2=1:n
        if counter2~=counter1
            Buff=Buff.*((X-x(counter2))./(x(counter1)-x(counter2)));
        end
    end
    P=P+y(counter1)*Buff;
end


figure()
plot(X,P)
hold on
plot(X,Y)
hold on
plot(x,y,'r.','MarkerSize',25);
grid on
legend('Approximate function','Main function','points')
xlabel('X')
ylabel('Y')
