function [minimum, steps] = gradient(X, C, epsilon, gamma, M)
  % Returns the minimum of a function using the gradient descent algorithm
  nn = size(C);
  rows = nn(1);
  columns = M;
  a = zeros(rows, columns);
  steps = 0; % so we know what step sizes result in faster convergence
  index = 1;
%  for index = 1:M
  is_finished = 0;
while ~is_finished
    grad = 2*X'*X*a(:, index) - 2*X'*C;
    a(:, index + 1) = a(:, index) - gamma*grad;
    
    index = index + 1;
    steps = index;
    is_finished = norm(a(:, index + 1) - a(:, index)) < epsilon
  end
  minimum = a(:, steps);
end