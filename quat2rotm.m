function [ R ] = quat2rotm( q )
%QUAT2ROTM Convert quaternion to rotation matrix.
%   R = QUAT2ROTM(Q) converts a quaternion Q into its equivalent 3-by-3 
%   rotation matrix R. Q must have its scalar component as its 4th element.
%
%   See also ROTM2QUAT, QUAT.

R = eye(3) + 2*q(4)*skew(q(1:3)) + 2*skew(q(1:3))^2;
        
end

