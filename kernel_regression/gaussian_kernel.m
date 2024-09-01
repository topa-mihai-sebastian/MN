function retval = gaussian_kernel(x, y, sigma)
  n = length(x);
  aux = 0;

  for i = 1 : n
    aux = aux + (x(i) - y(i))^2;
  endfor

  aux = aux / (2 *(sigma^2));

  retval = exp(-aux);
endfunction

