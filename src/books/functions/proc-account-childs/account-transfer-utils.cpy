       UPDATE-TARGET.
           MOVE WS-TARGET-ID TO AR-ID
           READ ACCOUNT-FILE KEY IS AR-ID
               INVALID KEY
                   DISPLAY "ERROR: DESTINATION ACCOUNT NOI FOUND."
                   STOP RUN
           END-READ

           ADD WS-TRANSFER-AMT TO AR-BALANCE
           REWRITE ACCOUNT-RECORD
               INVALID KEY
                   DISPLAY "ERROR: FAILED TO UPDATE DESTINATION ACCOUNT."
                   STOP RUN
           END-REWRITE.

       UPDATE-SOURCE.
           MOVE WS-INPUT-ID TO AR-ID
           READ ACCOUNT-FILE KEY IS AR-ID
               INVALID KEY
                   DISPLAY "ERROR: FAILED TO READ SOURCE ACCOUNT."
                   STOP RUN
           END-READ

           SUBTRACT WS-TRANSFER-AMT FROM AR-BALANCE
           REWRITE ACCOUNT-RECORD
               INVALID KEY
                   DISPLAY "ERROR: FAILED TO UPDATE SOURCE ACCOUNT."
                   STOP RUN
           END-REWRITE.
