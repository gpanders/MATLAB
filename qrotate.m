function [ n ] = qrotate( q, r )
%QROTATE Rotate vector by quaternion.
%   N = qrotate(Q,R) calculates the rotated vector, N, for a quaternion,
%   Q, and a vector, R. If R is a M-by-3 matrix, N is also a M-by-3 matrix
%   where each row of N is the corresponding row in R rotated by Q.

n = zeros(size(r));
if min(size(n)) > 1
    for i = 1:size(r, 1)
        m = qmult(qmult(q, [r(i, :) 0]), qconj(q));
        n(i, :) = m(1:3);
    end
else
    m = qmult(qmult(q, [r 0]), qconj(q));
    n(:) = m(1:3);
end

end

