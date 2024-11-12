mi_limit(Goal, Max) :-
        mi_limit(Goal, Max, _).

mi_limit(true, N, N).
mi_limit((A,B), N0, N) :-
        mi_limit(A, N0, N1),
        mi_limit(B, N1, N).
mi_limit(g(G), N0, N) :- N0 @> 0,
        N1 is N0 - 1,
        mi_clause(G, Body),
        mi_limit(Body, N1, N).