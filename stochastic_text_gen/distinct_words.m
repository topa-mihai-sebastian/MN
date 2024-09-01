function retval = distinct_words (tokens)
  % TODO: Find unique strings HINT: unique
  aux = unique(tokens);
  retval = sort(aux);
endfunction
