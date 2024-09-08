function probs = sample_next_word (text, words_idx, k_secv_idx, k, stoch)
  % ultima k-secv din text
  last_k_secv = strjoin(text(end-k+1:end), ' ');
  
  % verifica daca exista in k_secv_idx
  if isKey(k_secv_idx, last_k_secv)
    % daca exista luam indicele
    idx = k_secv_idx(last_k_secv);
    
    % ret prob pentru k-secv
    probs = stoch(:, idx);
  else
    % daca nu exista ret zeros
    probs = zeros(size(stoch, 1), 1);
  endif
endfunction
