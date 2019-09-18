----------------------------- MODULE TestNoStop -----------------------------
EXTENDS Integers
VARIABLES i,pc

Init == /\ i = 0 
        /\ pc = "start"

Next == 
           /\ i' \in 0..20
           /\ pc' = "start"
         \/ 
           /\ i' = 100
           /\ pc' = "done"   
=============================================================================
\* Modification History
\* Last modified Tue Sep 03 23:36:27 IST 2019 by manoharm
\* Created Tue Sep 03 23:24:11 IST 2019 by manoharm
