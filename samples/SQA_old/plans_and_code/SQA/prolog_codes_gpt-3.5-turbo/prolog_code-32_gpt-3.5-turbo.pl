% Facts
dance_form(ananda_tandava, bliss, creation).
dance_form(rudra_tandava, anger, destruction).
% Rules
dance_meaning(Form, Meaning) :-
dance_form(Form, _, Meaning).
% Query Predicate
query :- dance_meaning(ananda_tandava, Meaning).
%query.