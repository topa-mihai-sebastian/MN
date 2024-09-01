function unique_cell_array = distinct_k_secv(cell_array)
    aux = unique(cell_array);
    unique_cell_array = sort(aux);
endfunction

