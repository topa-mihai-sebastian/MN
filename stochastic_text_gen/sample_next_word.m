function probs = sample_next_word (text, words_idx, k_secv_idx, k, stoch)
  for i = 1:n
    %  Probabilities next word
    probs = sample_next_word(text, widx, kscvidx, k, stoch);
    
    next_word = prob_choose(probs, word_set);
    
    % append next word
    text = [text, next_word];
  endfor
  
  retval = text;
endfunction
