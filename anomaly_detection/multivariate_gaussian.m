function probabilities = multivariate_gaussian(X, mean_values, cov_matrix)
  [m, n] = size(X);
  invs = inv(cov_matrix);
  coeficient = (2 * pi) ^ (n / 2) * (det(cov_matrix)) ^ (1 / 2);
  coeficient = 1 / coeficient;
  probabilities = zeros(m, 1);
  for i = 1:m
    % x(i) - miu
    xi = X(i, :) - mean_values;
    exponent = exp((-1 / 2) * xi * invs * xi');
    probabilities(i) = coeficient * exponent;
  endfor
endfunction
