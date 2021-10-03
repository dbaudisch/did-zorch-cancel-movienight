       IDENTIFICATION DIVISION.
       PROGRAM-ID. "DIDZORCHCANCELMOVIENIGHT".
       AUTHOR.     DBAUDISCH.
      *Is it saturday, and did Zorch cancel movie night again?

       ENVIRONMENT DIVISION.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-DAY PIC 9(1) VALUE ZERO.
       01 WS-ISMOVIENIGHT PIC A(3) VALUE "NO".
       01 WS-ISCANCELLED PIC A(3) VALUE "NO".
       
       PROCEDURE DIVISION.
       0100-START-HERE.
           ACCEPT WS-DAY FROM DAY-OF-WEEK
      *    6 = saturday
           IF WS-DAY = 6 THEN
               DISPLAY "It is saturday!"
               DISPLAY "Should there be a movie night? (yes/no)"
               ACCEPT WS-ISMOVIENIGHT
               MOVE FUNCTION LOWER-CASE(WS-ISMOVIENIGHT) 
      -            TO WS-ISMOVIENIGHT

               IF WS-ISMOVIENIGHT = 'yes' THEN
                   DISPLAY "Did Zorch cancel it? (yes/no)"
                   ACCEPT WS-ISCANCELLED
                   MOVE FUNCTION LOWER-CASE(WS-ISCANCELLED) 
      -                TO WS-ISCANCELLED

                   IF WS-ISCANCELLED = 'yes' THEN
                       DISPLAY "NOT AGAIN, ZORCH! >:("
                   END-IF
               ELSE
                   DISPLAY "See ya at movie night! :)"
               END-IF
           ELSE
               DISPLAY "It is not saturday!"
               DISPLAY "Try again tomorrow!"
           END-IF.
              
       STOP RUN.
       END PROGRAM DIDZORCHCANCELMOVIENIGHT.
