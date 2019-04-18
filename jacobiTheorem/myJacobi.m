function [x, error] = myJacobi(A,b,x0,tol,n)

m = size(A,1);
BIG = 100;
xExact = A\b;

for k = 1:n

    x = zeros(size(x0));
    
    for i = 1:m
        a = A(i,:); % get ith row
        aii = a(i); % get diagonal entry
        a(i) = 0;  % don't want to add xi
                       % in rhs
        
        % exit if diagonal is zero or too small               
        if (abs(aii) <= tol)
            error = BIG;
            return
        end
        
        x(i) = (b(i) - a*x0)/aii;
    end  
    
    x0= x;   
    
    % update the current error
    error = norm(x - xExact);
    
    % exit if method coverged
    if (error <= tol)
        return
    end   
end

