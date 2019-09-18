--------------------------- MODULE simpleprogram ---------------------------
EXTENDS Integers
VARIABLES i, pc   

Init == (pc = "start") /\ (i = 0)

Pick == /\ pc = "start"  
        /\ i' \in 0..1000
        /\ pc' = "middle"

Add1 == /\ pc = "middle" 
        /\ i' = i + 1
        /\ pc' = "done"  
           
Next == Pick \/ Add1

=============================================================================
\* Modification History
\* Last modified Fri Aug 30 14:46:12 IST 2019 by manoharm
\* Created Fri Aug 30 14:45:28 IST 2019 by manoharm
