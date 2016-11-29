autocmd BufRead *.clj try | silent! Require | catch /^Fireplace/ | endtry
