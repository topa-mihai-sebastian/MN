function P = get_lower_inverse(L)
  n = size(L, 1);
  P = eye(n);

  for i = 1:n
    for j = (i - 1) : -1 : 1
      P(i, :) -= P(j, :) * L(i, j);
    endfor
    P(i, :) /= L(i, i);
  endfor
endfunction