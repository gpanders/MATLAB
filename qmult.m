function [ n ] = qmult( q, r )
%QMULT Calculate the product of two quaternions.
%   QMULT(Q, R) calculates the product of two quaternions Q and R. Q 
%   and R must each be vectors of length 4 and must have the scalar 
%   quaternion component as the fourth element.

if ~isequal(size(q), size(r))
    error('Inputs must be same size.');
end

n = zeros(size(q));
n(1:3) = q(4)*r(1:3) + q(1:3)*r(4) - cross(q(1:3), r(1:3));
n(4) = r(4)*q(4) - sum(r(1:3) .* q(1:3));

end

