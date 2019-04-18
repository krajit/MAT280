clc
clear all

% A = [10 1 1 1;
%         1 10 2 1;
%         1 1 20 1;
%         0 0 1 10];

l = 5;  % A is l x l matrix
b  = ones(l,1);
n = 200; % num of iteration
tol = 1e-10;
x0 = zeros(size(b));


for k = 1:100000
    

A = 30*(rand(l,l) - 0.5);


[x,error] = myJacobi(A,b,x0,tol,n);

    if (error <= tol)
        
        for i= 1:l
            A(i,:) = A(i,:)/max(abs(A(i,:)));
        end
        
                    
        imagesc(abs(A).^3);  % maps matrix to color grid

         colormap('jet'); % This colormap maps low values to blue, and 
                            % high values to red
        saveas(gcf,strcat('fig',num2str(k),'.png'))

    end

end