function [K] = build_kernel(X, f, f_param)
  n = size(X, 1);
  K = zeros(n, n);
  for i = 1:n
    for j = 1:n
      K(i, j) = f(X(i, :), X(j, :), f_param);
    endfor
  endfor
endfunction

