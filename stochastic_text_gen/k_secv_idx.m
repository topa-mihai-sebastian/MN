function retval = k_secv_idx(distinct_k_sec)
  retval = containers.Map();
  saiz = numel(distinct_k_sec);

  for i = 1:saiz
    if isKey(retval, distinct_k_sec{i})
      retval(distinct_k_sec{i}) = [retval(distinct_k_sec{i}), i];
    else
      % prima aparitie
      retval(distinct_k_sec{i}) = i;
    endif
  endfor
endfunction

