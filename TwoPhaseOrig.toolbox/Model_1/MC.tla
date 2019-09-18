---- MODULE MC ----
EXTENDS TwoPhaseOrig, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
r1, r2, r3
----

\* MV CONSTANT definitions RM
const_156865644556611000 == 
{r1, r2, r3}
----

\* SYMMETRY definition
symm_156865644556612000 == 
Permutations(const_156865644556611000)
----

=============================================================================
\* Modification History
\* Created Mon Sep 16 23:24:05 IST 2019 by manoharm
