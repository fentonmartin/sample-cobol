       IDENTIFICATION DIVISION.
       PROGRAM-ID. 4-Kel-5-a.
       ENVIRONMENT DIVISION.

       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT STUDENT ASSIGN TO 'TUGAS.txt'
           ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD STUDENT.
       01 STUDENT-FILE.
           05 TODAY PIC 99/99/99.
           05 TUGAS PIC A(25).
           05 DEAD PIC 99/99/99.
      *-----------------------
       WORKING-STORAGE SECTION.
       01 WS-STUDENT.
           05 WS-TODAY PIC 99/99/99.
           05 WS-TUGAS PIC A(25).
           05 WS-DEAD PIC 99/99/99.
       01 WS-EOF PIC A(1).
       01 TAMBAH-DATA PIC X.
           88 YA VALUE 'Y', 'y'.
           88 TIDAK VALUE 'T', 't'.
      *-----------------------
       PROCEDURE DIVISION.
       OPEN OUTPUT STUDENT.
       MAIN-PROCEDURE.
           DISPLAY 'DATE     : '
           ACCEPT TODAY.
           DISPLAY 'TUGAS     : '
           ACCEPT TUGAS.
           DISPLAY 'DEADLINE : '
           ACCEPT DEAD.
           WRITE STUDENT-FILE.
           DISPLAY 'Try again? :D'
           ACCEPT TAMBAH-DATA
           IF YA GO TO MAIN-PROCEDURE.
               CLOSE STUDENT.
           PERFORM HASIL.
           CLOSE STUDENT.
           STOP RUN.

       HASIL.
           DISPLAY '=================================================='.
           DISPLAY 'DATE     TUGAS                     DEADLINE      '.
           DISPLAY '=================================================='.

       OPEN INPUT STUDENT.
       DISPLAY ''.
       PERFORM UNTIL WS-EOF='Y'
           READ STUDENT INTO WS-STUDENT
           AT END MOVE 'Y' TO WS-EOF
           NOT AT END PERFORM DISPLAY-TUGAS
           DISPLAY '-'
           END-READ
       END-PERFORM.

       DISPLAY-TUGAS.
           DISPLAY TODAY, ' ', TUGAS, ' ', DEAD.
