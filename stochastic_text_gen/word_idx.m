function retval = word_idx(distinct_wds)
    aux = unique(distinct_wds);
    aux = sort(aux);
    retval = containers.Map();
    for i = 1:length(aux)
        current_word = aux{i};
        retval(current_word) = i;
    endfor
endfunction