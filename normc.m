function [ M ] = normc( M )
%NORMC Normalize columns of matrix
%   NORMC(M) normalizes the columns of M to a length of 1

for col = 1:size(M, 2)
    M(:, col) = M(:, col) / norm(M(:, col));
end

end

