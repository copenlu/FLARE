% Define the rule to calculate the remaining number of chocolates
remaining_chocolates(LeahChocolates, SisterChocolates, EatenChocolates, RemainingChocolates) :-
TotalInitialChocolates is LeahChocolates + SisterChocolates,
RemainingChocolates is TotalInitialChocolates - EatenChocolates.
% Query predicate to find the remaining chocolates
query(RemainingChocolates) :-
remaining_chocolates(32, 42, 35, RemainingChocolates).
% Uncomment the line below to run the query in SWI-Prolog environment
% ?- query(Remaining).
%query(Remaining).