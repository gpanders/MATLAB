function [ q ] = qconj( q )
%QCONJ Calculate conjugate of quaternion.
%   QCONJ(Q) calculates the conjugate of a quaternion Q.

q(1:3) = -q(1:3);

end

