function y = gradient(f, c1, c2, x, epsilon, gamma)
    y = zeros(size(x));
    y(1, 1) = f(1, 1);
    y(2, 1) = f(2, 1);
    
    index = 2;
    while 1 > epsilon
        y(1, index) = y(1, index - 1) - gamma*(x(1, index - 1) - c1);
        y(2, index) = y(2, index - 1) - gamma*(x(2, index - 1) - c2);
        index = index + 1
    end
end