function pred = eval_value(x, X, f, f_param, a)
  n = size(X, 1);
  pred = 0;
  i = 0;

  while i < n
    i = i + 1;
    aux = f(x, X(i, :), f_param);
    pred = a(i) * aux + pred;
  endwhile
endfunction

