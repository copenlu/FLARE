% Define the rule for calculating the number of pens each person owns
pens_owned(george, 18).
pens_owned(timothy, PensTimothy) :- pens_owned(george, GeorgePens), PensTimothy is 3 * GeorgePens.
pens_owned(sarah, PensSarah) :- pens_owned(timothy, TimothyPens), PensSarah is TimothyPens / 2.
% Define a predicate to execute the specific query with given values
query(PensSarah) :-
pens_owned(sarah, PensSarah).
% Uncomment the line below to run the query
% ?- query(PensSarah).
%query(PensSarah).