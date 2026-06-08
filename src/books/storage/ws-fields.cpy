      *> Dipakai di WORKING-STORAGE
       01 WS-INPUT-ID      PIC 9(4)  VALUE ZEROS.
       01 WS-INPUT-PIN     PIC 9(6)  VALUE ZEROS.
       01 WS-INPUT-AMOUNT  PIC 9(8)  VALUE ZEROS.
       01 WS-REMAIN        PIC 9(8)  VALUE ZEROS.
       01 WS-FOUND         PIC X     VALUE 'N'.
       01 WS-EOF           PIC X     VALUE 'N'.

       01 WS-D50000        PIC 9(3)  VALUE ZEROS.
       01 WS-D20000        PIC 9(3)  VALUE ZEROS.
       01 WS-D10000        PIC 9(3)  VALUE ZEROS.
       01 WS-OUT-NUM       PIC ZZZ9.

       01 WS-CAP           PIC 9(8)  VALUE 10000000.
       01 WS-DENOM         PIC 9(5)  VALUE 10000.

       01 WS-ACCOUNT-TABLE.
         05 WS-ACCOUNT-ENTRY OCCURS 100 TIMES.
           10 WTE-ID        PIC 9(4).
           10 WTE-NAME      PIC X(20).
           10 WTE-BALANCE   PIC 9(9).
           10 WTE-PIN       PIC 9(6).

       01 WS-TOTAL-ACCOUNTS PIC 9(3) VALUE ZEROS.
       01 WS-FOUND-IDX      PIC 9(3) VALUE ZEROS.
       01 WS-I              PIC 9(3) VALUE ZEROS.
