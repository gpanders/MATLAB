function [ n ] = qnormalize( q )
%QNORMALIZE Normalize quaternion.
%   N = QNORMALIZE(Q) calculates the normalized quaternion, N, for a given
%   quaternion Q. Q must have its scalar component as the fourth element. If Q
%   is a M-by-4 matrix of quaternions, N is a M-by-4 matrix of normalized
%   quaternions.

n = zeros(size(q));
if min(size(q)) > 1
    if size(q, 2) ~= 4
        error('Input must be a M-by-4 matrix of quaternions');
    else
        n = bsxfun(@rdivide, q, sqrt(sum(q.^2, 2)));
    end
else
    n(:) = q / norm(q);
end
    

end

