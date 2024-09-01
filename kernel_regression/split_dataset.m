function [X_train, y_train, X_pred, y_pred] = split_dataset (X, y, percentage)
  %linie=>x
  %coloana=>y
  % nr de pct pt antrenare
  kapa = round(percentage * size(X, 1));

  % antrenare
  X_train = X(1:kapa, :);
  y_train = y(1:kapa, :);

  % testare
  X_pred = X(kapa+1:end, :);
  y_pred = y(kapa+1:end, :);
  endfunction
