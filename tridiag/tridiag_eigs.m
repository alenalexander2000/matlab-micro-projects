
% TRIDIAG_EIGS  Compare sparse vs dense eigen-solvers on a random
% symmetric tridiagonal matrix.
%
% [lamS,lamF,tS,tF] = tridiag_eigs(n,k)
%                                    n  = matrix dimension
%                                    k  = # eigenvalues wanted (default 10)

function [IamSparse,IamFull,tSparse,tFull] = tridiag_eigs(n,k)

    if nargin<2   % 'nargin' gives no. of arguments in the function
       k=10;
    end

    %  1.  build the matrix 

    d = randn(n,1);     %  Main Diagonal 
    sd = [0; randn(n-1,1)];  %  Sub/Super Diagonal
    A = spdiags([sd d sd], (-1:1), n, n);  %  Sparse tridiagonal

    
    %  2.  Sparse Solver
    tic                                       %  Timer Starts 
    IamSparse = eigs(A,k,'largestreal');      %  Finding k real Eigenvalues
    tSparse = toc;                            %  Timer Ends and gets stored 
                                          % eigs() exploits the
                                          % sparsity of A and is hence less
                                          % time consuming.
    %  3.  Dense Solver
    tic
    IamFull = eig(full(A));
    IamFull = IamFull(end-k+1:end);
    tFull = toc;

    % --- 4.  pretty print 
    fprintf('n = %d\n',n);
    fprintf('eigs(%d)   : %.3f s\n',k,tSparse);
    fprintf('eig(full)  : %.3f s\n',tFull);

end