       OPEN-FILE.
           OPEN I-O ACCOUNT-FILE
           IF WS-FILE-STATUS NOT = "00"
               DISPLAY "ERROR: CANNOT OPEN ACCOUNT FILE."
               DISPLAY "FILE STATUS: " WS-FILE-STATUS
               STOP RUN
           END-IF.

       CLOSE-FILE.
           CLOSE ACCOUNT-FILE
           IF WS-FILE-STATUS NOT = "00"
               DISPLAY "ERROR: FAILED TO CLOSE ACCOUNT FILE."
               STOP RUN
           END-IF.
