function [mean_values, variances] = estimate_gaussian(X)
  X = X';
  [n, m] = size(X);

  mean_values = zeros(n,1);
  variances = zeros(n,n);
  a = zeros(n, 1);

  for i = 1: n
    for j = 1: m
      mean_values(i) = mean_values(i) + X(i,j);
    endfor
    mean_values(i) = mean_values(i) / m;
  endfor

  for i = 1: m
    for j = 1: n
      a(j) = X(j, i) - mean_values(j);
    endfor
    for j = 1: n
      for k = 1:n
        variances(j,k)= variances(j,k) + a(j) * a(k);
      endfor
    endfor
  endfor

  variances = variances / m;
  mean_values = mean_values';
  variances = variances';

endfunction
