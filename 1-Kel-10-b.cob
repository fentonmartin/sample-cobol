       identification division.
       program-id. Kel-10-b.

       environment division.

       data division.
           working-storage section.
           77 a pic 99.
           77 b pic 99.
           77 c1 pic 99.
           77 c2 pic -999.
           77 c3 pic 9999.
           77 c4 pic 9999.99.
           77 c5 pic 999999.

       procedure division.
           display "Masukan nilai A :".
           accept a.

           display "Masukan nilai B :".
           accept b.

           compute c1=a + b.
           display "A + B = ", c1.

           compute c2=a - b.
           display "A - B = ", c2.

           compute c3=a * b.
           display "A * B = ", c3.

           compute c4=a / b.
           display "A / B = ", c4.

           compute c5=a **b.
           display "A ** B = ", c5.
