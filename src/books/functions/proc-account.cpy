       SEARCH-ACCOUNT.
           MOVE 'N' TO WS-FOUND
           PERFORM VARYING WS-I FROM 1 BY 1
               UNTIL WS-I > WS-TOTAL-ACCOUNTS
               IF WTE-ID(WS-I) = WS-INPUT-ID
                   MOVE 'Y'    TO WS-FOUND
                   MOVE WS-I   TO WS-FOUND-IDX
               END-IF
           END-PERFORM.

       VERIFY-PIN.
           IF WTE-PIN(WS-FOUND-IDX) NOT = WS-INPUT-PIN
               DISPLAY "PIN salah. Akses ditolak."
               STOP RUN
           END-IF
           DISPLAY "Selamat datang, " WTE-NAME(WS-FOUND-IDX).

       UPDATE-BALANCE.
           SUBTRACT WS-INPUT-AMOUNT FROM
               WTE-BALANCE(WS-FOUND-IDX)
           PERFORM SAVE-ALL-ACCOUNTS.
