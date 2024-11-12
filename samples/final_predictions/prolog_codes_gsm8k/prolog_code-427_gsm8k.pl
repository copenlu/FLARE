% Predicate to solve the system of equations and find the number of dromedaries
solve_herd(C, D) :-
C + D =:= 180, % Assumed atom/predicate
2*C + D =:= 304, % Assumed atom/predicate
D is 304 - 2*C.
% Query predicate to find the number of dromedaries in the herd
query(Dromedaries) :-
solve_herd(_, Dromedaries).
% Uncomment the following line to run the query
% ?- query(Dromedaries).
%query(Dromedaries).