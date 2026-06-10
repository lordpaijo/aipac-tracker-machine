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
       COPY "src/books/storage/account-record.cpy".

       WORKING-STORAGE SECTION.
       COPY "src/books/storage/ws-fields.cpy".

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
           PERFORM ACTION-MENU
           PERFORM CLOSE-FILE
           STOP RUN.

       COPY "src/books/functions/proc-print.cpy".
       COPY "src/books/functions/proc-file.cpy".
       COPY "src/books/functions/proc-account.cpy".
       COPY "src/books/functions/proc-menu.cpy".
       COPY "src/books/functions/proc-calc.cpy".
