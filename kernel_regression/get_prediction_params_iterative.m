function [a] = get_prediction_params_iterative(K, y, lambda)
  a0 = zeros(size(K, 1), 1);

  % functia implementata
  % 1e-7 este un numar suficient de mic pentru un rezultat bun
  a = conjugate_gradient(K + lambda * eye(size(K)), y, a0, 1e-7, 10000);
endfunction

