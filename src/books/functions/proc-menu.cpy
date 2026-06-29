       WITHDRAW-MENU.
           DISPLAY "================================"
           DISPLAY " YOUR BALANCE: Rp" AR-BALANCE
           DISPLAY "================================"
           DISPLAY " WITHDRAWAL AMOUNT: " WITH NO ADVANCING
           ACCEPT WS-INPUT-AMOUNT
           PERFORM ERROR-CHECK
           PERFORM CALC-DENOMINATION
           PERFORM DISPLAY-RESULT
           PERFORM UPDATE-BALANCE
           DISPLAY " BALANCE REMAINING: Rp" AR-BALANCE.

       TRANSFER-MENU.
           DISPLAY "================================"
           DISPLAY " BALANCE TRANSFER "
           DISPLAY " YOUR BALANCE: Rp" AR-BALANCE
           DISPLAY "================================"
           DISPLAY "DESTINATION ACCOUNT NUMBER: "
               WITH NO ADVANCING
           ACCEPT WS-TARGET-ID
           PERFORM TRANSFER-INPUT-HANDLE
           PERFORM TRANSFER-OUTPUT-HANDLE.

       ACTION-MENU.
           DISPLAY "================================"
           DISPLAY " 1. CASH WITHDRAWAL"
           DISPLAY " 2. BALANCE TRANSFER"
           DISPLAY "================================"
           DISPLAY "CHOICE: " WITH NO ADVANCING
           ACCEPT WS-MENU-CHOICE

           EVALUATE WS-MENU-CHOICE
               WHEN 1
                   PERFORM WITHDRAW-MENU
               WHEN 2
                   PERFORM TRANSFER-MENU
               WHEN OTHER
                   DISPLAY "INVALID CHOICE."
           END-EVALUATE.

       COPY "src/books/functions/proc-menu-childs/withdraw-menu-utils.cpy".
       COPY "src/books/functions/proc-menu-childs/transfer-menu-utils.cpy".
