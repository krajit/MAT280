clc
clear all



x = linspace(-2,2,100);


yy =   myStepFunction(x);


x = linspace(-2,-1,100);
plot(x,myStepFunction(x),'b')
hold on


x = linspace(-1+0.001,1-0.001,100);
plot(x,myStepFunction(x),'b')
hold on


x = linspace(1,2,100);
plot(x,myStepFunction(x),'b')







