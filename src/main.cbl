       IDENTIFICATION DIVISION.
       PROGRAM-ID. SIMPLE-ATM.
       AUTHOR. LordPaijo.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT ACCOUNT-IN
               ASSIGN TO "data/ACCOUNTS.DAT"
               ORGANIZATION IS SEQUENTIAL
               ACCESS MODE IS SEQUENTIAL
               FILE STATUS IS WS-FILE-STATUS.

           SELECT ACCOUNT-OUT
               ASSIGN TO "data/ACCOUNTS.DAT"
               ORGANIZATION IS SEQUENTIAL
               ACCESS MODE IS SEQUENTIAL
               FILE STATUS IS WS-FILE-STATUS.

       DATA DIVISION.
       FILE SECTION.
       FD ACCOUNT-IN.
       01 AR-IN.
         05 ARI-ID        PIC 9(4).
         05 ARI-NAME      PIC X(20).
         05 ARI-BALANCE   PIC 9(9).
         05 ARI-PIN       PIC 9(6).

       FD ACCOUNT-OUT.
       01 AR-OUT.
         05 ARO-ID        PIC 9(4).
         05 ARO-NAME      PIC X(20).
         05 ARO-BALANCE   PIC 9(9).
         05 ARO-PIN       PIC 9(6).

       COPY "books/storage/account-record.cpy".

       WORKING-STORAGE SECTION.
       01 WS-FILE-STATUS   PIC XX VALUE SPACES.
       COPY "books/storage/ws-fields.cpy".

       PROCEDURE DIVISION.
           PERFORM LOGIN-SCREEN
           PERFORM LOAD-ALL-ACCOUNTS
           PERFORM SEARCH-ACCOUNT

           IF WS-FOUND = 'N'
               DISPLAY "Akun tidak ditemukan."
               STOP RUN
           END-IF

           PERFORM VERIFY-PIN
           PERFORM WITHDRAW-MENU
           STOP RUN.

       COPY "books/functions/proc-print.cpy".
       COPY "books/functions/proc-file.cpy".
       COPY "books/functions/proc-account.cpy".
       COPY "books/functions/proc-menu.cpy".
       COPY "books/functions/proc-calc.cpy".
