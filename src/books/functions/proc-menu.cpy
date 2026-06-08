       WITHDRAW-MENU.
           DISPLAY "================================"
           DISPLAY " Saldo Anda: Rp" WTE-BALANCE(WS-FOUND-IDX)
           DISPLAY "================================"
           DISPLAY "Jumlah penarikan: " WITH NO ADVANCING
           ACCEPT WS-INPUT-AMOUNT

           IF WS-INPUT-AMOUNT > WS-CAP
               DISPLAY "ERROR: Melebihi batas Rp10.000.000"
               STOP RUN
           END-IF

           IF FUNCTION MOD(WS-INPUT-AMOUNT, WS-DENOM) NOT = 0
               DISPLAY "ERROR: Harus kelipatan Rp10.000"
               STOP RUN
           END-IF

           IF WS-INPUT-AMOUNT > WTE-BALANCE(WS-FOUND-IDX)
               DISPLAY "ERROR: Saldo tidak mencukupi."
               STOP RUN
           END-IF

           PERFORM CALC-DENOMINATION
           PERFORM DISPLAY-RESULT
           PERFORM UPDATE-BALANCE
           DISPLAY " Saldo tersisa: Rp" WTE-BALANCE(WS-FOUND-IDX).
