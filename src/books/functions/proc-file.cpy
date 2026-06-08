       LOAD-ALL-ACCOUNTS.
           MOVE 0 TO WS-TOTAL-ACCOUNTS
           MOVE 'N' TO WS-EOF
           OPEN INPUT ACCOUNT-IN
           IF WS-FILE-STATUS NOT = "00"
               DISPLAY "ERROR: Tidak bisa membuka file akun."
               STOP RUN
           END-IF

           PERFORM UNTIL WS-EOF = 'Y'
               READ ACCOUNT-IN
                   AT END
                       MOVE 'Y' TO WS-EOF
                   NOT AT END
                       ADD 1 TO WS-TOTAL-ACCOUNTS
                       MOVE ARI-ID      TO
                         WTE-ID(WS-TOTAL-ACCOUNTS)
                       MOVE ARI-NAME    TO
                         WTE-NAME(WS-TOTAL-ACCOUNTS)
                       MOVE ARI-BALANCE TO
                         WTE-BALANCE(WS-TOTAL-ACCOUNTS)
                       MOVE ARI-PIN     TO
                         WTE-PIN(WS-TOTAL-ACCOUNTS)
               END-READ
           END-PERFORM

           CLOSE ACCOUNT-IN.

       SAVE-ALL-ACCOUNTS.
           OPEN OUTPUT ACCOUNT-OUT
           IF WS-FILE-STATUS NOT = "00"
               DISPLAY "ERROR: Tidak bisa menulis file akun."
               STOP RUN
           END-IF

           PERFORM VARYING WS-I FROM 1 BY 1
               UNTIL WS-I > WS-TOTAL-ACCOUNTS
               MOVE WTE-ID(WS-I)      TO ARO-ID
               MOVE WTE-NAME(WS-I)    TO ARO-NAME
               MOVE WTE-BALANCE(WS-I) TO ARO-BALANCE
               MOVE WTE-PIN(WS-I)     TO ARO-PIN
               WRITE AR-OUT
           END-PERFORM

           CLOSE ACCOUNT-OUT.
