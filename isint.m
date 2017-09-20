function [ b ] = isint( n )
%ISINT Return true if number is an integer.
%   ISINT(N) returns true if N is an integer, and false otherwise. Note
%   that this is different from the ISINTEGER function which checks for the
%   data type of N. ISINT only checks the value of N, not the type of the
%   variable itself.
%
%   See also ISINTEGER.

b = (n - floor(n)) == 0;


end

