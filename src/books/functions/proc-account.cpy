       SEARCH-ACCOUNT.
           MOVE WS-INPUT-ID TO AR-ID
           READ ACCOUNT-FILE KEY IS AR-ID
               INVALID KEY
                   MOVE 'N' TO WS-FOUND
               NOT INVALID KEY
                   MOVE 'Y' TO WS-FOUND
           END-READ.

       VERIFY-PIN.
           IF AR-PIN NOT = WS-INPUT-PIN
               DISPLAY "PIN salah. Akses ditolak."
               STOP RUN
           END-IF
           DISPLAY "Selamat datang, " AR-NAME.

       UPDATE-BALANCE.
           SUBTRACT WS-INPUT-AMOUNT FROM AR-BALANCE
           REWRITE ACCOUNT-RECORD
               INVALID KEY
                   DISPLAY "ERROR: Gagal menyimpan saldo."
                   STOP RUN
           END-REWRITE.
