clear all;
close all;

N1 = 100;
N2 = 100;

a1 = 1:N1;
a2 = 1:N2;

[A1, A2] = meshgrid(a1, a2);
c1 = 43.5;
c2 = 66.2;

F = (A1 - c1).^2 + (A2 - c2).^2;

step_size = 0.1; % gamma
stopping_criteria = 0.01; % epsilon

% min = zeros(100);
f = [(a1 - c1).^2; (a2 - c2).^2];
gradient_f = 2*[a1 - c1;  a2  - c2];

x = [a1; a2];

y = gradient(f, c1, c2, x, step_size, stopping_criteria);








