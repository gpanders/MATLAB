function [ M ] = normr( M )
%NORMR Normalize rows of matrix.
%   NORMR(M) normalizes the rows of M to a length of 1.
%
%   See also NORMC.

n = sqrt(sum(M.^2, 2));
n(n == 0) = 1;
M = bsxfun(@rdivide, M, n);

end

