function f = y(x)
    f = x^(5/2);
end
function f = dy(x)
    f = (5/2)*x^(3/2);
end
function d = first(dx, point)
    d = 1/(2*dx) * (y(point+dx) - y(point - dx));
end

function d = second(dx, point)
    d = 1/(4*dx^2)*(y(point+2*dx) - 2*y(point)+y(x - 2*dx));
end

function d = third(dx, point)
    d = 1/(16*dx^3)*(y(point+4*dx) -2*y(x+2*dx) +2*y(x-2*dx)-y(x - 2*dx));
end

first