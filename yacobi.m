function [x, count] =  yacobi(A, f, epsilon)
    D = diag(diag(A));
    B = inv(D)*(D-A);
    g = inv(D)*f;
    xprev = f;
    xcurrent = f;
    x = zeros(size(f));
    count = 0;
    while norm(x-xprev, 'inf') >= epsilon
        xprev = xcurrent;
        xcurrent = B*xprev+g; 
        x = xcurrent;
        count = count+1;
    end    
end



    