function [ q ] = quat( v )
%QUAT Convert a vector into a quaternion.
%   QUAT(V) converts the 3-by-1 or 4-by-1 vector V into a quaternion. If V
%   is 4-by-1, the fourth element is assumed to be the scalar component.
%
%   See also QUAT2VEC, VEC2QUAT.

if min(size(v)) == 1
    if length(v) == 3
        q.v = v(:)';
        q.s = 0;
    elseif length(v) == 4
        q.v = [0 0 0];
        q.v(:) = v(1:3);
        q.s = v(4);
    else
        error('Input must have length 3 or 4');
    end
else
    if size(v, 2) ~= 4
        error('Input must have size N-by-4');
    else
        q = repmat(struct('v', [0 0 0], 's', 0), size(v, 1), 1);
        for ii = 1:size(v, 1)
            q(ii).v = v(ii, 1:3);
            q(ii).s = v(ii, 4);
        end
    end
end
        

end

