      *> Working Storage Variables
       01 WS-FILE-STATUS   PIC XX   VALUE SPACES.
       01 WS-EOF           PIC X    VALUE 'N'.
       01 WS-FOUND         PIC X    VALUE 'N'.

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
