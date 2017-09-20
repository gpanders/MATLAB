function [ b ] = iseven( n )
%ISEVEN Return true if number is even.
%   ISEVEN(N) returns true if the integer N is even; otherwise, it returns
%   false.
%
%   See also ISODD.

if ~isint(n)
    error('N must be an integer');
else
    b = mod(n, 2) == 0;
end

end

