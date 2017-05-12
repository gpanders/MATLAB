function [ v ] = quat2vec( q )
%QUAT2VEC Convert a quaternion into vector representation
%   QUAT2VEC(Q) converts the quaternion Q into a 4-by-1 vector where the
%   fourth element is the scalar component

v = q.v;
v(4) = q.s;

end

