%% Homework 1
% EE45440
% Joshua Saunders

clear all
close all

%% Problem 2
% a) With eps = 1, gamma = 1 a minimum is not found. Instead, NaN's are returned

X=[1 0.2;0.1 1];
C=[0.1;0.5];

eps=1; % stopping criterion for gradient algorithm
gamma=1;   % step for gradient algorithm
M=1000000;
[a_opt1] = gradient_test1(X,C,eps,gamma,M);

% b) eps = 0.1, gamma = 0.1 a minimum is found, but not the minimum. This is due
% to eps being too small

eps=0.1; % stopping criterion for gradient algorithm
gamma=0.1;   % step for gradient algorithm
[a_opt2] = gradient_test1(X,C,eps,gamma,M);

% Result of execution
%
% a_opt =
%
%    0.030000
%    0.104000
%
% steps = 3

% c) eps = 0.001, gamma = 0.1 results in a solution that is closer to the actual
% minimum

eps=0.001; % stopping criterion for gradient algorithm
gamma=0.1;   % step for gradient algorithm
[a_opt3] = gradient_test1(X,C,eps,gamma,M);

% Result of execution
%
% a_opt =
%
%    0.0048700
%    0.4951409
% 
% steps =  27

% e) eps = 0.01, gamma = 0.01 results in a solution that is further from the 
% minimum than was found in the previous step. This shows that perhaps gamma
% isn't the parameter that should be changed (in this case).

eps=0.001; % stopping criterion for gradient algorithm
gamma=0.01;   % step for gradient algorithm
[a_opt4] = gradient_test1(X,C,eps,gamma,M);

% Result of execution
%
% a_opt =
%
%    0.034477
%    0.445632
%
% steps =  119

%% Note
% With each subsequent reduction of the size of eps, the number of steps 
% required to be within that bound increases.

% e) eps = 0.001, gamma = 0.1 results in a solution that is very close to the 
% actual minimum. 

eps=0.0001; % stopping criterion for gradient algorithm
gamma=0.1;   % step for gradient algorithm
[a_opt5] = gradient_test1(X,C,eps,gamma,M);

% Result of execution
%
% a_opt =
% 
%    4.7484e-04
%    4.9955e-01
%
% steps =  42

%% Problem 3
% A solution that is reasonably close to the minimum can be obtained by having
% epsilon = 1e-9. This choice of eps was determined by iteratively decreasing
% eps until a minimum that was within 1-09 of the acutal minimum was reached.

eps=1e-9; % stopping criterion for gradient algorithm
gamma=0.1;   % step for gradient algorithm
[a_opt6] = gradient_test1(X,C,eps,gamma,M);

% Result of execution
%
% a_opt =
%
%    4.4246e-09
%    5.0000e-01
%
% steps =  116

%% Problem 4
%
% Adjusting the stopping criterion to be |f(ai + 1)- f(ai)| < eps resulted in
% worse performance than in the previous problems. As shown below, gamma had to
% to be adjusted and the number of steps required to reach a minimum increased
% approximately 3 orders of magnitude.

eps=1e-9; % stopping criterion for gradient algorithm
gamma=1e-5;   % step for gradient algorithm
[a_opt7] = gradient_test1(X,C,eps,gamma,M);

% Result of execution
%
% a_opt =
%
%    0.0015565
%    0.4984718
%
% steps =  34932

%% Problem 5
% Using the steepest descent algorithm results in a much quicker convergence
% and with greater accuracy than using a static step-size.

eps=1e-9; % stopping criterion for gradient algorithm
[a_opt6] = gradient_test2(X,C,eps,M);

% Result of execution
%
% a_opt =
%
%    3.2072e-10
%    5.0000e-01
%
% steps =  17