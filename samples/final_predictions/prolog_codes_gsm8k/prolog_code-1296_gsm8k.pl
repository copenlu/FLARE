% Define the rule to calculate the total number of lemons needed
lemons_needed(RegularLemons, ExtraTartLemons, TotalLemons) :-
TotalCups is 4,  % Total cups of lemon juice needed
LemonsPerCup is 6,  % Number of lemons that yield 1 cup of juice
RegularLemons is TotalCups * LemonsPerCup,
ExtraTartLemons is 2 * LemonsPerCup,  % Twice as tart
TotalLemons is RegularLemons + ExtraTartLemons.
% Query to find the total number of lemons needed
query_lemons_needed(TotalLemons) :-
lemons_needed(RegularLemons, ExtraTartLemons, TotalLemons).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_lemons_needed(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).