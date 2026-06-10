#!/usr/bin/sh
#!/usr/bin/bash
#!/usr/bin/zsh
#!/usr/bin/fish

cobc -x src/init-accounts.cbl -free \
 -I src/books/storage \
 -o build/initaccounts  

./build/initaccounts

cobc -x src/main.cbl -free \
 -I src/books/storage \
 -I src/books/functions \
 -I src/books/functions/proc-account-childs \
 -I src/books/functions/proc-menu-childs \
 -o build/simpleatm