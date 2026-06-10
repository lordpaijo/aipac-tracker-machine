       TRANSFER-INPUT-HANDLE.
           IF WS-TARGET-ID = WS-INPUT-ID
               DISPLAY "ERROR: Tidak bisa transfer ke rekening sendiri."
               STOP RUN
           END-IF

           PERFORM FIND-TARGET

           IF WS-TARGET-FOUND = 'N'
               DISPLAY "ERROR: Rekening tujuan tidak ditemukan."
               STOP RUN
           END-IF

           DISPLAY "Jumlah transfer: " WITH NO ADVANCING
           ACCEPT WS-TRANSFER-AMT

           IF WS-TRANSFER-AMT = ZEROS
               DISPLAY "ERROR: Jumlah tidak boleh nol."
               STOP RUN
           END-IF

           IF WS-TRANSFER-AMT > AR-BALANCE
               DISPLAY "ERROR: Saldo tidak mencukupi."
               STOP RUN
           END-IF.


       TRANSFER-OUTPUT-HANDLE.
           DISPLAY "================================"
           DISPLAY " KONFIRMASI TRANSFER"
           DISPLAY "================================"
           DISPLAY " Dari  : " AR-NAME
           DISPLAY " Ke    : " WS-TARGET-NAME
           DISPLAY " Jumlah: Rp" WS-TRANSFER-AMT
           DISPLAY "================================"
           DISPLAY "Konfirmasi? (Y/N): "
               WITH NO ADVANCING
           ACCEPT WS-CONFIRM

           IF WS-CONFIRM NOT = 'Y' AND
              WS-CONFIRM NOT = 'y'
               DISPLAY "Transfer dibatalkan."
               STOP RUN
           END-IF

           PERFORM TRANSFER-FUNDS

           DISPLAY "================================"
           DISPLAY " Transfer berhasil!"
           DISPLAY " Saldo tersisa: Rp" AR-BALANCE
           DISPLAY "================================".
           