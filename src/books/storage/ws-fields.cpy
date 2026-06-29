      *> Working Storage Variables
       01 WS-MENU-CHOICE   PIC 9     VALUE ZEROS.
       01 WS-FILE-STATUS   PIC XX    VALUE SPACES.
       01 WS-EOF           PIC X     VALUE 'N'.
       01 WS-FOUND         PIC X     VALUE 'N'.

       01 WS-INPUT-ID      PIC 9(4)  VALUE ZEROS.
       01 WS-INPUT-PIN     PIC 9(6)  VALUE ZEROS.
       01 WS-INPUT-AMOUNT  PIC 9(8)  VALUE ZEROS.

       01 WS-CAP           PIC 9(8)  VALUE 10000000.
       01 WS-DENOM         PIC 9(5)  VALUE 10000.

       01 WS-REMAIN        PIC 9(8)  VALUE ZEROS.
       01 WS-D50000        PIC 9(3)  VALUE ZEROS.
       01 WS-D20000        PIC 9(3)  VALUE ZEROS.
       01 WS-D10000        PIC 9(3)  VALUE ZEROS.
       01 WS-OUT-NUM       PIC ZZZ9.

      *> Transfer
       01 WS-TARGET-ID     PIC 9(4)  VALUE ZEROS.
       01 WS-TARGET-FOUND  PIC X     VALUE 'N'.
       01 WS-TRANSFER-AMT  PIC 9(8)  VALUE ZEROS.
       01 WS-CONFIRM       PIC X     VALUE 'N'.

      *> Buffer nama tujuan disimpan terpisah karena
      *> READ kedua akan menimpa AR-NAME di buffer FD
       01 WS-SOURCE-NAME   PIC X(20) VALUE SPACES.
       01 WS-SOURCE-BAL    PIC 9(9)  VALUE ZEROS.
       01 WS-TARGET-NAME   PIC X(20) VALUE SPACES.
