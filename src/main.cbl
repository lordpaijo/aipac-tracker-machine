       IDENTIFICATION DIVISION.
       PROGRAM-ID. SIMPLE-ATM.
       AUTHOR. LordPaijo.
       DATE-WRITTEN. June 6th 2026.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       COPY "utils/ws-vars.cpy".

       PROCEDURE DIVISION.
       MAIN-LOGIC.
           DISPLAY X"0A" & "=============================="
           DISPLAY " MASUKKAN JUMLAH PENARIKAN: " WITH NO ADVANCING
           ACCEPT WS-INPUT

           PERFORM ERROR-HANDLER
           PERFORM CALCULATE.
           PERFORM DISPLAY-OUTPUT.
           STOP RUN.

       COPY "utils/proc-error.cpy".
       COPY "utils/proc-calc.cpy".
       COPY "utils/proc-print.cpy".
