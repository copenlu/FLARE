% Define the number of paintings Samantha has
samantha_paintings(27).
% Define the number of paintings Shelley has based on Samantha's paintings
shelley_paintings(Shelley) :-
samantha_paintings(Samantha),
Shelley is Samantha + 12.
% Define the number of paintings Kim has based on Shelley's paintings
kim_paintings(Kim) :-
shelley_paintings(Shelley),
Kim is Shelley - 8.
% Query predicate to find out the number of paintings Kim has
query(Kim) :-
kim_paintings(Kim).
% Uncomment the following line to run the query
% ?- query(Kim).
%query(Kim).