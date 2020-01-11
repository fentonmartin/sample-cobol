       IDENTIFICATION DIVISION.
       PROGRAM-ID. 3-Kel-9-a.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 jum      pic 99.
       77 n        pic 99.
       77 rata     pic +Z99.99.
       77 total    pic S999 value 0.
       01 nilai-nilai.
           02 nilai pic S999 OCCURS 10 TIMES.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Masukkan jumlah data : "
            ACCEPT jum.
            PERFORM INPUT-NILAI
               VARYING n FROM jum BY -1 UNTIL n < 1.
            PERFORM DISPLAY-NILAI
               VARYING n FROM jum BY -1 UNTIL n < 1.
            perform COMPUTE-NILAI.
            STOP RUN.
0000
       INPUT-NILAI.
            DISPLAY "Nilai ke ", n, " : ".
            ACCEPT nilai (n).
            COMPUTE total = total + nilai (n).
            DISPLAY SPACE.

       DISPLAY-NILAI.
            DISPLAY "Nilai ke-", n," adalah " nilai (n).
            COMPUTE rata = total / jum.

       COMPUTE-NILAI.
            DISPLAY SPACE.
            DISPLAY "Total nilai nya adalah ", total.
            DISPLAY "Rata-rata nya adalah ", rata.
