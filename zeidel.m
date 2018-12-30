function [x, count] =  zeidel(A, f, epsilon)   
    xprev = f;
    x = zeros(size(f));
    xcurrent = f;
    count = 0;
    while norm(x-xprev, 'inf') >= epsilon
        for i=1:length(f)
            next = 0;
            current = 0;
            for j=1:i-1
                next = next + A(i,j)*xcurrent(j);
            end
             for j=i+1:length(f)
                current = current + A(i,j)*xprev(j);
            end
           xcurrent(i) = 1/A(i,i)*(f(i) - next - current);
        end
        xprev = x;
        x = xcurrent;
        count = count+1;
    end    
end