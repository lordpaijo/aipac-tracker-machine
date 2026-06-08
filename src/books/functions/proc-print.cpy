       LOGIN-SCREEN.
           DISPLAY "================================"
           DISPLAY " SELAMAT DATANG di ATM   "
           DISPLAY "================================"
           DISPLAY "No. Rekening : " WITH NO ADVANCING
           ACCEPT WS-INPUT-ID
           DISPLAY "PIN          : " WITH NO ADVANCING
           ACCEPT WS-INPUT-PIN.

       DISPLAY-RESULT.
           DISPLAY "=============================="
           DISPLAY " RINCIAN PECAHAN"
           DISPLAY "=============================="
           MOVE WS-D50000 TO WS-OUT-NUM
           DISPLAY " Rp50.000  x " WS-OUT-NUM " lembar"
           MOVE WS-D20000 TO WS-OUT-NUM
           DISPLAY " Rp20.000  x " WS-OUT-NUM " lembar"
           MOVE WS-D10000 TO WS-OUT-NUM
           DISPLAY " Rp10.000  x " WS-OUT-NUM " lembar"
           DISPLAY "==============================".
           

