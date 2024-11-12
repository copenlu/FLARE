% Facts about organisms
organism(amoeba, unicellular, binary_fission).
organism(human, multicellular, sexual_reproduction).
% Rule to determine cancer susceptibility
can_develop_cancer(Organism) :-
organism(Organism, multicellular, _). % Assumed atom/predicate
% Query predicate
query :-
can_develop_cancer(amoeba),
can_develop_cancer(human).
%query.