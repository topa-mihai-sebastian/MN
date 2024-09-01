function retval = polynomial_kernel(x, y, d)
  retval = (1 + (y * x')) ^ d;
endfunction

