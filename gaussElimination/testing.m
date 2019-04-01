clc
clear all

n = 5; % size of matrix

% generate a random matrix
A = floor(10*(rand(n,n)-0.5));

% random rhs
b = floor(10*(rand(n,1)-0.5));

% augmented matrix
Ab = [A b]

R = Ab;

% column swipe
for i = 1:n
    for j = i+1:n
        
        lij = R(j,i)/R(i,i); % scaling factor
        
        R(j,:) = R(j,:) - lij*R(i,:);       
        
    end    
end

% final
R









