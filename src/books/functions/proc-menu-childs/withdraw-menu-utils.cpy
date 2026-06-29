       ERROR-CHECK.
           IF WS-INPUT-AMOUNT > WS-CAP
             DISPLAY "ERROR: GOING OVER Rp10.000.000 LIMIT!"
               STOP RUN
           END-IF

           IF FUNCTION MOD(WS-INPUT-AMOUNT, WS-DENOM) NOT = 0
             DISPLAY "ERROR: HAS TO BE THE SUM OF Rp10.000"
               STOP RUN
           END-IF

           IF WS-INPUT-AMOUNT > AR-BALANCE
               DISPLAY "ERROR: INSUFFICIENT BALANCE."
               STOP RUN
           END-IF.
