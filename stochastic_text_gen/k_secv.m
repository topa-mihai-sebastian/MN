function B = k_secv(A, k)
    B = {};
    for i = 1:(length(A) - k)
        aux = A(i:i+k-1);
        pair = strjoin(aux, " ");
        B{end+1} = pair;
    endfor
    B = B';
endfunction

