function [ x ] = qnorm( q )
%QNORM Norm of a quaternion.
%   QNORM(Q) computes the norm of the quaternion Q

if isstruct(q)
    if isfield(q, 'v') && isfield(q, 's')
        x = norm([q.v(:); q.s]);
    else
        error('Input must be a quaternion or vector with length 4');
    end
else
    if length(q) == 4
        x = norm(q);
    else
        error('Input must be a quaternion or vector with length 4');
    end
end

end

