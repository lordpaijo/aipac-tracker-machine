       ERROR-HANDLER.
           IF WS-INPUT > WS-CAP
               DISPLAY "ERROR: Melebihi batas Rp10.000.000"
               STOP RUN
           END-IF

           IF FUNCTION MOD(WS-INPUT, 10000) NOT = 0
               DISPLAY "ERROR: Harus kelipatan Rp10.000"
               STOP RUN
           END-IF.


