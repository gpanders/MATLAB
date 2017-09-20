function [ H ] = householder( x )
%HOUSEHOLDER Generate a Householder transformation
%   HOUSEHOLDER(X) creates a matrix H representing the Householder
%   transformation of X, that is
%
%       H*x = [a 0 0 ... 0]
%
%   where a = NORM(X) and size(H*X) = size(X)

M = length(x);
v = x(:) + sign(x(1))*norm(x)*[1; zeros(M-1, 1)];

H = eye(M) - (2*(v*v'))/(v'*v);

end

