------------------------------ MODULE DieHard ------------------------------
EXTENDS Integers
VARIABLES small,big

TypeOK == /\ small \in 0..3
          /\ big \in 0..5

Init == /\ small = 0 
        /\ big = 0

FillSmall == /\ small' = 3
             /\ big' = big

FillBig == /\ small' = small
             /\ big' = 5

SmallToBig == IF big + small <= 5 
               THEN
                /\ small' = 0
                /\ big' = big + small
              ELSE
                  /\ small' = big + small - 5
                  /\ big' = 5
                

BigToSmall == IF big + small <= 3 
              THEN
                /\ small' = big + small
                /\ big' = 0
              ELSE
                  /\ small' = 3
                  /\ big' = big + small - 3

EmptySmall == /\ small' = 0
              /\ big' = big

EmptyBig == /\ small' = small
            /\ big' = 0

Next == \/ FillSmall
        \/ FillBig
        \/ EmptySmall
        \/ EmptyBig
        \/ SmallToBig
        \/ BigToSmall
=============================================================================
\* Modification History
\* Last modified Tue Sep 03 22:50:50 IST 2019 by manoharm
\* Created Tue Sep 03 22:13:51 IST 2019 by manoharm
