function [ b ] = isodd( n )
%ISODD Return true if number is odd.
%   ISODD(N) returns true if the integer N is odd; otherwise, it returns
%   false
%
%   See also ISEVEN.

if ~isint(n)
    error('N must be an integer');
else
    b = mod(n, 2) == 1;
end

end

