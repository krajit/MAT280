

function y = myStepFunction(x)

% x is the input
% y is the output

% it is programmers job to create y out of x

y = zeros(size(x)); % memory allocator

% now we create the step/peicewise function

for i = 1:length(x)
    
   if ( abs(x(i)) < 1 )
       
       y(i) = 0.5*abs(x(i));
       
   else
       y(i) = x(i).^2;
   end   
    
end



