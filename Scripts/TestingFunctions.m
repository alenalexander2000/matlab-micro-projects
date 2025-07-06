clc;
clear;
%Calling Fib

%F = fib_prealloc(5);
%disp(F);


%Calling Tridiag_eigs

[A] = tridiag_eigs(1000,10); 

% Try these to compare run-times:
% [A] = tridiag_eigs(5000,10); 
% [A] = tridiag_eigs(8000,10);
% (We're finding efficiency of Sparsity of a matrix and eigs() function 
% used to find largest few eigen values as opposed to dense matrix A and
% dense matrix-Eigen value Solver eig(). This one cannot make use of the
% Sparsity of A.
    
