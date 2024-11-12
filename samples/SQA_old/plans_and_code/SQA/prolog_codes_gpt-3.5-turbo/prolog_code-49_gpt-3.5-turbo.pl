% Define known cuisines and their common sauces
cuisine(french, [bechamel, hollandaise, veloute, bordelaise]).
cuisine(mexican, [salsa, mole, guacamole]).
cuisine(italian, [marinara, alfredo, pesto]).
% Predicate to check if the sauce request is unusual for a given cuisine
is_unusual_sauce(Cuisine, Sauce) :-
cuisine(Cuisine, Sauces),
\+ member(Sauce, Sauces).
% User query interface
ask_sauce_unusual(Cuisine, Sauce) :-
(   is_unusual_sauce(Cuisine, Sauce)
->  format('~w is an unusual sauce request for ~w cuisine.~n', [Sauce, Cuisine])
;   format('~w is a typical sauce in ~w cuisine.~n', [Sauce, Cuisine])).
% Assumed atom/predicate for user input
query :- ask_sauce_unusual(french, salsa).  Query for French cuisine and salsa
%query.