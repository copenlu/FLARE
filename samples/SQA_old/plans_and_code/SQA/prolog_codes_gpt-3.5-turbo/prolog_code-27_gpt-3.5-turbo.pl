% Knowledge Base
deity(zeus, greek).
deity(osiris, egyptian).
deity(flying_spaghetti_monster, modern).
% Predicate to check if a deity is part of an ancient pantheon
is_ancient_deity(Deity) :-
deity(Deity, Pantheon),
member(Pantheon, [greek, egyptian, norse, roman]).  % Assumed atom: norse, roman
% Query predicate for user input
check_deity :-
(   is_ancient_deity(Deity)
->  true
;   fail).
% Driver predicate for querying
query :- check_deity.
%query.