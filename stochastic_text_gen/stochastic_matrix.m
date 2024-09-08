function retval = stochastic_matrix(k_secv_corpus, corpus_words, words_set, k_secv_set, k)
    [words_set, ~, corpus_idx] = unique(corpus_words);
    [~, ~, k_secv_idx] = unique(k_secv_corpus);
    retval = zeros(length(k_secv_set), length(words_set));

    max_word_index = length(corpus_words) - k;

    for i = 1:max_word_index
        k_seq_index = k_secv_idx(i);
        next_word_index = corpus_idx(i + k);
        retval(k_seq_index, next_word_index) = retval(k_seq_index, next_word_index) + 1;
    endfor
endfunction
