function! s:SetCloudConfigFileType()
  if getline(1) =~ '^#cloud-config'
    set filetype=yaml 
  endif
endfunction

au BufRead,BufNewFile * call s:SetCloudConfigFileType()
