% Facts
compound('NaCl', safe).
% Assumed atom/predicate
compound('Na', unsafe).
compound('Cl2', unsafe).
% Rules
safe_compound(X) :- compound(X, safe).
% Check safety of a compound
check_safety(Compound) :-
safe_compound(Compound).
% Query predicate
query :- check_safety('NaCl'), check_safety('Na'), check_safety('Cl2').
%query.