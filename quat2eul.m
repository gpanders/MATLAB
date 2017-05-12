function [ roll, pitch, yaw ] = quat2eul( q )
%QUAT2EUL Convert quaternion to Euler angles.
%   [ROLL,PITCH,YAW] = QUAT2EUL(Q) converts the quaternion Q 

roll = atan2(2*(q(4) * q(1) + q(2) * q(3)), 1 - 2*(q(1)^2 + q(2)^2));
pitch = asin(2*(q(4) * q(2) - q(3) * q(1)));
yaw = atan2(2*(q(4) * q(3) + q(1) * q(2)), 1 - 2*(q(2)^2 + q(3)^2));

end

