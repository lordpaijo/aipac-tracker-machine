       TRANSFER-INPUT-HANDLE.
           IF WS-TARGET-ID = WS-INPUT-ID
               DISPLAY "ERROR: CANNOT TRANSFER TO OWN ACCOUNT."
               STOP RUN
           END-IF

           PERFORM FIND-TARGET

           IF WS-TARGET-FOUND = 'N'
               DISPLAY "ERROR: DESTINATION ACCOUNT NOT FOUND."
               STOP RUN
           END-IF

           DISPLAY "TRANSFER AMOUNT: " WITH NO ADVANCING
           ACCEPT WS-TRANSFER-AMT

           IF WS-TRANSFER-AMT = ZEROS
               DISPLAY "ERROR: AMMOUNT CANNOT BE ZERO."
               STOP RUN
           END-IF

           IF WS-TRANSFER-AMT > AR-BALANCE
               DISPLAY "ERROR: INSUFFICIENT BALANCE."
               STOP RUN
           END-IF.


       TRANSFER-OUTPUT-HANDLE.
           DISPLAY "================================"
           DISPLAY " TRANSFER CONFIRMATION"
           DISPLAY "================================"
           DISPLAY " FROM  : " AR-NAME
           DISPLAY " TO    : " WS-TARGET-NAME
           DISPLAY " AMOUNT: Rp" WS-TRANSFER-AMT
           DISPLAY "================================"
           DISPLAY "CONFIRM? (Y/N): "
               WITH NO ADVANCING
           ACCEPT WS-CONFIRM

           IF WS-CONFIRM NOT = 'Y' AND
              WS-CONFIRM NOT = 'y'
               DISPLAY "TRANSFER CANCELED."
               STOP RUN
           END-IF

           PERFORM TRANSFER-FUNDS

           DISPLAY "================================"
           DISPLAY " TRANSFER SUCCESSFUL!"
           DISPLAY " BALANCE REMAINING: Rp" AR-BALANCE
           DISPLAY "================================".
           
