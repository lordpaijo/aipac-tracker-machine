       IDENTIFICATION DIVISION.
       PROGRAM-ID. INIT-ACCOUNTS.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT ACCOUNT-FILE
               ASSIGN TO "data/ACCOUNTS.dat"
               ORGANIZATION IS INDEXED
               ACCESS MODE IS SEQUENTIAL
               RECORD KEY IS AR-ID
               ALTERNATE RECORD KEY IS AR-PIN
                   WITH DUPLICATES
               FILE STATUS IS WS-FILE-STATUS.

       DATA DIVISION.
       FILE SECTION.
       FD ACCOUNT-FILE.
       COPY "src/books/storage/account-record.cpy".

       WORKING-STORAGE SECTION.
       01 WS-FILE-STATUS PIC XX VALUE SPACES.

       PROCEDURE DIVISION.
       MAIN-LOGIC.
           OPEN OUTPUT ACCOUNT-FILE

           MOVE 1001           TO AR-ID
           MOVE 'BUDI SANTOSO' TO AR-NAME
           MOVE 5000000        TO AR-BALANCE
           MOVE 12345          TO AR-PIN
           WRITE ACCOUNT-RECORD

           MOVE 1002           TO AR-ID
           MOVE 'ANI RAHAYU'   TO AR-NAME
           MOVE 2500000        TO AR-BALANCE
           MOVE 56789          TO AR-PIN
           WRITE ACCOUNT-RECORD

           MOVE 1003           TO AR-ID
           MOVE 'JOKO WIDODO'  TO AR-NAME
           MOVE 10000000       TO AR-BALANCE
           MOVE 99999          TO AR-PIN
           WRITE ACCOUNT-RECORD

           CLOSE ACCOUNT-FILE
           DISPLAY "ACCOUNTS.DAT berhasil dibuat."
           STOP RUN.
