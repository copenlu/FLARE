% Facts
weight(gaming_pc, 8000). % Assumed atom/predicate
% Comparison Rule
heavier(Object1, Object2) :-
weight(Object1, Weight1),
weight(Object2, Weight2),
Weight1 > Weight2.
% Query Predicate
