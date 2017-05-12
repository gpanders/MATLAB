function [ V ] = skew( v )
%SKEW Convert a vector into a skew-symmetric matrix
%   SKEW(V) converts the 3-by-1 vector V into a 3-by-3 skew-symmetric
%   matrix. When right-multiplied by another 3-by-1 vector R, this is
%   equivalent to taking the cross product of V and R, i.e. SKEW(V)*R is
%   equal to CROSS(V, R)
%
%   See also UNSKEW, CROSS

if length(v) ~= 3
    error('Vector must be of length 3');
end

V = [0 -v(3) v(2);v(3) 0 -v(1);-v(2) v(1) 0];

end

