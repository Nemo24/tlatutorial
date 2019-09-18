----------------------------- MODULE TestNoStop -----------------------------
EXTENDS Integers
VARIABLES i 

Init == i = 0

Next == IF i < 10
        THEN
            i' = i + 1
         ELSE 
            i' = 100   
=============================================================================
\* Modification History
\* Last modified Tue Sep 03 23:27:05 IST 2019 by manoharm
\* Created Tue Sep 03 23:24:11 IST 2019 by manoharm
