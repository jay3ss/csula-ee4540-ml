clear all
close all

% This script performs the minimization of the quadratic function
% norm(Xa-c).^2 using the gradient algorithm 

X=[1 0.2;0.1 1];
C=[0.1;0.5];

eps=1; % stopping criterion for gradient algorithm
gamma=1;   % step for gradient algorithm
M=1000000;
[a_opt] = gradient_test1(X,C,eps,gamma,M);

% 
% plotting the function
%
a1=(-10:1:10); a2=(-10:1:10);  % axes
[A1,A2]=meshgrid(a1,a2);       % grid
F=(X(1,1)*A1+X(1,2)*A2-C(1)).^2+(X(2,1)*A1+X(2,2)*A2-C(2)).^2;   % evaluating function

figure(1)                      % plotting the curve in 3D
mesh(a1,a2,F);
grid on
title('curve to minimize');
