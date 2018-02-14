%% Gradient descent test 
% Josh saunders

%clear all
%close all

M = 2;

X = [1 2;
     3 4];
C = [1; 2];

% Stopping parameter
epsilon = 0.0000001;

% Step size
gamma = 0.0005;

[minimum, steps] = gradient(X, C, epsilon, gamma, 2)
