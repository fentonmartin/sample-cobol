       IDENTIFICATION DIVISION.
       PROGRAM-ID. ulang.
       ENVIRONMENT DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       CONFIGURATION SECTION.
      *-----------------------
       INPUT-OUTPUT SECTION.
      *-----------------------
       DATA DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       FILE SECTION.
      *-----------------------
       WORKING-STORAGE SECTION.
      *-----------------------
       77 n pic -99.
       PROCEDURE DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       MAIN-PROCEDURE.
      **
      * The main procedure of the program
      **
            PERFORM ULANG
               VARYING n FROM 1 BY 1 UNTIL n > 10.
            PERFORM ULANG
               VARYING n FROM 1 BY -1 UNTIL n < -10.
            PERFORM ULANG
               VARYING n FROM 1 BY 2 UNTIL n > 10.
            PERFORM ULANG
               VARYING n FROM 1 BY -2 UNTIL n < -10.
            STOP RUN.

       ULANG.
           display n.
