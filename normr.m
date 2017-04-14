function [ M ] = normr( M )
%NORMR Normalize rows of matrix
%   NORMC(M) normalizes the columns of M to a length of 1

for row = 1:size(M, 1)
    M(row, :) = M(row, :) / norm(M(row, :));
end

end

