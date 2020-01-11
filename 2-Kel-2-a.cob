       IDENTIFICATION DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       PROGRAM-ID. 2-Kel-9-a.
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
           77 kopi pic 99.
           77 uang pic 9(5).
           77 bayar pic 9.
       PROCEDURE DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       MAIN-PROCEDURE.

            DISPLAY "KOPI LUWAK = $ 2.0".
            DISPLAY "$1 = Rp. 14.000,00".
            DISPLAY "Masukan jumlah kopi           : "
            ACCEPT kopi.
            DISPLAY "Masukkan uang pembayaran (Rp) : "
            ACCEPT uang.
            compute bayar = (uang/14000) - (kopi*2).
            DISPLAY "Kembaliannya                  : $ "
            DISPLAY bayar.
            STOP RUN.
