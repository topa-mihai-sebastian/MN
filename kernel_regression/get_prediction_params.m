function [a] = get_prediction_params(K, y, lambda)
  n = size(K, 1);
  aux = lambda * eye(n) + K;

  % am folosit functia implementata
  L = cholesky(aux);
  a = L' \ (L \ y);
  %L = chol(aux, 'lower');
  %A \ b
  %Ax = b <=>  x = A\b
endfunction
