function [ r ] = qpropagate( q, w, tspan )
%QPROPAGATE Propagate a quaternion over time.
%   QPROPAGATE(Q,W,TSPAN) propagates the quaternion Q over the interval
%   TSPAN = [T0 TFINAL] given an angular velocity vector W. If TSPAN is a
%   scalar, T0 is assumed to be 0 and the quaternion is propagated over the
%   interval [0 TSPAN].

if length(tspan) == 2
    dt = diff(tspan);
elseif length(tspan) == 1
    dt = tspan;
else
    error('Invalid argument')
end

% State transition matrix for the kinematic equation of the quaternion
alpha = 1i*norm(w);
C = cosh((dt*alpha)/2);
S = sinh((dt*alpha)/2)/alpha;
A = [ ...
    C, w(3)*S, -w(2)*S, w(1)*S;
    -w(3)*S, C, w(1)*S, w(2)*S;
    w(2)*S, -w(1)*S, C, w(3)*S;
    -w(1)*S, -w(2)*S, -w(3)*S, C;
    ];

r = zeros(size(q));
r(:) = real(A * q(:));

end

