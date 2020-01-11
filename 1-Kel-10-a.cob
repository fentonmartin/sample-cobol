       identification division.
       program-id. Kel-10-a.

       environment division.

       data division.

       working-storage section.
           77 nama pic x(15).
           77 kerja pic x(15).
           77 motto pic x(30).

       procedure division.
           display "Nama anda        : ".
           accept nama.
           display "Pekerjaan anda   : ".
           accept kerja.
           display "Motto hidup anda : ".
           accept motto.

           display "".

           display "Nama anda adalah ", nama.
           display "Pekerjaan anda adalah ", kerja.
           display "Motto hidup anda adalah ", motto.
           stop run.
