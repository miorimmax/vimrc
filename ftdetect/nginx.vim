" Syntax highlighting of nginx configuration for vim taken from nginx contrib
" tree: http://hg.nginx.org/nginx/file/tip/contrib/vim

au BufRead,BufNewFile *.nginx set ft=nginx
au BufRead,BufNewFile */etc/nginx/* set ft=nginx
au BufRead,BufNewFile */usr/local/nginx/conf/* set ft=nginx
au BufRead,BufNewFile nginx.conf set ft=nginx
