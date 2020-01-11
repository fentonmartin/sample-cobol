       IDENTIFICATION DIVISION.
       PROGRAM-ID. 4-Kel-5-a.
       ENVIRONMENT DIVISION.

       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT STUDENT ASSIGN TO 'DATA.txt'.

       DATA DIVISION.
       FILE SECTION.
       FD STUDENT.
       01 STUDENT-FILE.
           05 STUDENT-ID PIC Z9(3).
           05 NAME PIC A(25).
      *-----------------------
       WORKING-STORAGE SECTION.
       01 WS-STUDENT.
           05 WS-STUDENT-ID PIC 9(5).
           05 WS-NAME PIC A(25).
       01 WS-EOF PIC A(1).
       01 TAMBAH-DATA PIC X.
           88 YA VALUE 'Y', 'y'.
           88 TIDAK VALUE 'T', 't'.
      *-----------------------
       PROCEDURE DIVISION.
       OPEN OUTPUT STUDENT.
       MAIN-PROCEDURE.
           DISPLAY 'INPUT ID : '
           ACCEPT STUDENT-ID.
           DISPLAY 'NAMA     : '
           ACCEPT NAME.
           WRITE STUDENT-FILE.
           DISPLAY 'Try again? :D'
           ACCEPT TAMBAH-DATA
           IF YA GO TO MAIN-PROCEDURE.
               CLOSE STUDENT.
           PERFORM HASIL.
           CLOSE STUDENT.
           STOP RUN.

       HASIL.
           DISPLAY '-'.

       OPEN INPUT STUDENT.
       DISPLAY '='.
       PERFORM UNTIL WS-EOF='Y'
           READ STUDENT INTO WS-STUDENT
           AT END MOVE 'Y' TO WS-EOF
           NOT AT END PERFORM DISPLAY-NAMA
           DISPLAY '-'
           END-READ
       END-PERFORM.

       DISPLAY-NAMA.
           DISPLAY STUDENT-ID, ' ', NAME.
