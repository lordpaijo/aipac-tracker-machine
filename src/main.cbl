       IDENTIFICATION DIVISION.
       PROGRAM-ID. SIMPLE-ATM.
       AUTHOR. LordPaijo.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT ACCOUNT-FILE
               ASSIGN TO "data/ACCOUNTS.dat"
               ORGANIZATION INDEXED
               ACCESS MODE DYNAMIC
               RECORD KEY AR-ID
               ALTERNATE RECORD KEY AR-PIN
                   WITH DUPLICATES
               FILE STATUS WS-FILE-STATUS.

       DATA DIVISION.
       FILE SECTION.
       FD ACCOUNT-FILE.
       COPY "books/storage/account-record.cpy".

       WORKING-STORAGE SECTION.
       COPY "books/storage/ws-fields.cpy".

       PROCEDURE DIVISION.
           PERFORM LOGIN-SCREEN
           PERFORM OPEN-FILE
           PERFORM SEARCH-ACCOUNT

           IF WS-FOUND = 'N'
               DISPLAY "Akun tidak ditemukan."
               PERFORM CLOSE-FILE
               STOP RUN
           END-IF

           PERFORM VERIFY-PIN
           PERFORM WITHDRAW-MENU
           PERFORM CLOSE-FILE
           STOP RUN.

       COPY "books/functions/proc-print.cpy".
       COPY "books/functions/proc-file.cpy".
       COPY "books/functions/proc-account.cpy".
       COPY "books/functions/proc-menu.cpy".
       COPY "books/functions/proc-calc.cpy".
