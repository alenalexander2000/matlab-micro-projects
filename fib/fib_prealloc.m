function F = fib_prealloc(n)

% fib_prealloc(n) should return first n fibonacci numbers
% 
% F = fib_prealloc(n) gives a 1xn sized vector with kth number is the kth
% fibonacci number.

F = zeros(1,n);   % pre-allocates memory (EFFICIENT!)
F(1:2) = 1;       % Assigns first 2 terms of the sequence

for k = 3:n
    F(k) = F(k-1) + F(k-2);
end

end