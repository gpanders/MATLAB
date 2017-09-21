function [ df, fval ] = csdiff( f, x, h )
%CSDIFF Complex step differentiation.
%   Detailed explanation goes here

fval = f(x);

df = zeros(length(fval), length(x));

xc = x + eye(length(x))*h*1i;

for i = 1:length(x)
    df(:, i) = imag(f(xc(:, i))) / h;
end

end

