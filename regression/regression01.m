
clc
clear all


% read data from excel file
filename = 'data.xlsx';
xlsRange = 'A2:B53';
fileContent = xlsread(filename,xlsRange);


% parse data into x % y
x = fileContent(:,1);  % extract first column
y = fileContent(:,2);  % extract second column

plot(x,y,'.')

%% Suppose  it is given 
% y = a + bx + c*x^2 + d*x^3
% find a,b,c,d which best fits the data

tic
A = [ones(size(x)) x x.^2 x.^3];

abcd = (A'*A) \ (A'*y);

a = abcd(1);
b = abcd(2);
c = abcd(3);
d = abcd(4);

f = @(x)(a + b*x + c*x.^2 + d*x.^3);

hold on
plot(x,f(x))


toc



%% ans (approx) a = 0; b = 1; c = 4; d = 1;

