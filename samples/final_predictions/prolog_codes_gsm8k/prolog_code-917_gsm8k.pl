% Define the weight predicate for each person based on the given relationships
weight(martin, 55).
weight(carl, Weight) :- weight(martin, MartinWeight), Weight is MartinWeight + 16.
weight(christian, Weight) :- weight(carl, CarlWeight), Weight is CarlWeight + 8.
weight(harry, Weight) :- weight(christian, ChristianWeight), Weight is ChristianWeight - 5.
% Query predicate to get the weight of Harry
query(HarryWeight) :-
weight(harry, HarryWeight).
% Uncomment the following line to run the query
% ?- query(HarryWeight).
%query(HarryWeight).