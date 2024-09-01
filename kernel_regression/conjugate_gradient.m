function [x] = conjugate_gradient(A, b, x0, tol, max_iter)
  x = x0;
  % gradient
  r = b - A * x0;
  % cauta
  v = r;
  contor = 1;
  while norm(r) > tol && contor <= max_iter
    tk = (r' * r) / (v' * A * v);
    x = x + tk * v;
    % r(k+1)
    rN = r - tk * A * v;
    sk = (rN' * rN) / (r' * r);
    v = rN + sk * v;
    r = rN;
    contor = contor + 1;
  endwhile
endfunction

