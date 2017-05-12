function [ M ] = normc( M )
%NORMC Normalize columns of matrix.
%   NORMC(M) normalizes the columns of M to a length of 1.
%
%   See also NORMR.

n = sqrt(sum(M.^2, 1));
n(n == 0) = 1;
M = bsxfun(@rdivide, M, n);

end

