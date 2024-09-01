function L = cholesky(A)
  % cod din lab, optimizat pentru a nu da timeout
  %[n, n] = size(A);
  %L = zeros(n);

  %for i = 1 : n

  %for j = 1 : i-1
  %s = 0;
  %for k = 1 : j-1
  %s = s + L(i, k) * L(j, k);
  %endfor
  %L(i, j) = (A(i, j) - s) / L(j, j);
  %endfor
  %s = 0;
  %for k = 1 : i-1
  %s = s + L(i, k) * L(i, k);
  %endfor
  %L(i, i) = sqrt(A(i, i) - s);
  %endfor
  [n, n] = size(A);
  L = zeros(n);

  for j = 1:n
    s = A(j,j) - L(j, 1:j-1) * L(j, 1:j-1)';
    L(j, j) = sqrt(s);
    L(j+1:n, j) = (A(j+1:n, j) - L(j+1:n, 1:j-1) * L(j, 1:j-1)') / L(j, j);
  endfor
endfunction

