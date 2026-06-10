       UPDATE-TARGET.
           MOVE WS-TARGET-ID TO AR-ID
           READ ACCOUNT-FILE KEY IS AR-ID
               INVALID KEY
                   DISPLAY "ERROR: Rekening tujuan tidak ditemukan."
                   STOP RUN
           END-READ

           ADD WS-TRANSFER-AMT TO AR-BALANCE
           REWRITE ACCOUNT-RECORD
               INVALID KEY
                   DISPLAY "ERROR: Gagal update rekening tujuan."
                   STOP RUN
           END-REWRITE.

       UPDATE-SOURCE.
           MOVE WS-INPUT-ID TO AR-ID
           READ ACCOUNT-FILE KEY IS AR-ID
               INVALID KEY
                   DISPLAY "ERROR: Gagal membaca rekening sumber."
                   STOP RUN
           END-READ

           SUBTRACT WS-TRANSFER-AMT FROM AR-BALANCE
           REWRITE ACCOUNT-RECORD
               INVALID KEY
                   DISPLAY "ERROR: Gagal update rekening sumber."
                   STOP RUN
           END-REWRITE.
