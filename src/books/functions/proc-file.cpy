       OPEN-FILE.
           OPEN I-O ACCOUNT-FILE
           IF WS-FILE-STATUS NOT = "00"
               DISPLAY "ERROR: Tidak bisa membuka file akun."
               DISPLAY "FILE STATUS: " WS-FILE-STATUS
               STOP RUN
           END-IF.

       CLOSE-FILE.
           CLOSE ACCOUNT-FILE
           IF WS-FILE-STATUS NOT = "00"
               DISPLAY "ERROR: Gagal menutup file akun."
               STOP RUN
           END-IF.
