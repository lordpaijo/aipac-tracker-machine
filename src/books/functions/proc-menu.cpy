       WITHDRAW-MENU.
           DISPLAY "================================"
           DISPLAY " Saldo Anda: Rp" AR-BALANCE
           DISPLAY "================================"
           DISPLAY "Jumlah penarikan: " WITH NO ADVANCING
           ACCEPT WS-INPUT-AMOUNT
           PERFORM ERROR-CHECK
           PERFORM CALC-DENOMINATION
           PERFORM DISPLAY-RESULT
           PERFORM UPDATE-BALANCE
           DISPLAY " Saldo tersisa: Rp" AR-BALANCE.

       TRANSFER-MENU.
           DISPLAY "================================"
           DISPLAY " TRANSFER DANA"
           DISPLAY " Saldo Anda: Rp" AR-BALANCE
           DISPLAY "================================"
           DISPLAY "No. Rekening Tujuan: "
               WITH NO ADVANCING
           ACCEPT WS-TARGET-ID
           PERFORM TRANSFER-INPUT-HANDLE
           PERFORM TRANSFER-OUTPUT-HANDLE.

       ACTION-MENU.
           DISPLAY "================================"
           DISPLAY " 1. Tarik Tunai"
           DISPLAY " 2. Transfer Dana"
           DISPLAY "================================"
           DISPLAY "Pilihan: " WITH NO ADVANCING
           ACCEPT WS-MENU-CHOICE

           EVALUATE WS-MENU-CHOICE
               WHEN 1
                   PERFORM WITHDRAW-MENU
               WHEN 2
                   PERFORM TRANSFER-MENU
               WHEN OTHER
                   DISPLAY "Pilihan tidak valid."
           END-EVALUATE.

       COPY "src/books/functions/proc-menu-childs/withdraw-menu-utils.cpy".
       COPY "src/books/functions/proc-menu-childs/transfer-menu-utils.cpy".
