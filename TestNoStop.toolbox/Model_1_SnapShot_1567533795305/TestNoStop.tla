----------------------------- MODULE TestNoStop -----------------------------
EXTENDS Integers
VARIABLES i,pc

Init == /\ i = 0 
        /\ pc = "start"

Next == IF i < 10 /\ pc = "start"
        THEN
           /\ i' \in 0..20
           /\ pc' = "start"
         ELSE 
           /\ i' = 100
           /\ pc' = "done"   
=============================================================================
\* Modification History
\* Last modified Tue Sep 03 23:33:04 IST 2019 by manoharm
\* Created Tue Sep 03 23:24:11 IST 2019 by manoharm
