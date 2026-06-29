       LOGIN-SCREEN.
           DISPLAY "================================"
           DISPLAY " WELCOME TO ATM   "
           DISPLAY "================================"
           DISPLAY "ACCOUNT NUMBER: " WITH NO ADVANCING
           ACCEPT WS-INPUT-ID
           DISPLAY "PIN           : " WITH NO ADVANCING
           ACCEPT WS-INPUT-PIN.

       DISPLAY-RESULT.
           DISPLAY "=============================="
           DISPLAY " FRACTIONAL DETAILS"
           DISPLAY "=============================="
           MOVE WS-D50000 TO WS-OUT-NUM
           DISPLAY " Rp50.000  x " WS-OUT-NUM " SHEETS"
           MOVE WS-D20000 TO WS-OUT-NUM
           DISPLAY " Rp20.000  x " WS-OUT-NUM " SHEETS"
           MOVE WS-D10000 TO WS-OUT-NUM
           DISPLAY " Rp10.000  x " WS-OUT-NUM " SHEETS"
           DISPLAY "==============================".
           

