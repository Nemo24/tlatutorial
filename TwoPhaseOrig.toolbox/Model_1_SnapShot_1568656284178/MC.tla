---- MODULE MC ----
EXTENDS TwoPhaseOrig, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
r1, r2, r3
----

\* MV CONSTANT definitions RM
const_15686562811395000 == 
{r1, r2, r3}
----

\* SYMMETRY definition
symm_15686562811396000 == 
Permutations(const_15686562811395000)
----

=============================================================================
\* Modification History
\* Created Mon Sep 16 23:21:21 IST 2019 by manoharm
