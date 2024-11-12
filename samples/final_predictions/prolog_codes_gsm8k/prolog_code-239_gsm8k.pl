% Define the rule to calculate the number of penguins left sunbathing
calculate_penguins_left(InitialPenguins, PenguinsSwimming, PenguinsEating, PenguinsLeft) :-
PenguinsSwimming is InitialPenguins // 3,  % One-third of penguins go swimming
PenguinsEating is InitialPenguins // 3,    % Another one-third go eating
PenguinsLeft is InitialPenguins - PenguinsSwimming - PenguinsEating.
% Instantiate the predicates with the given values
% InitialPenguins = 36
% PenguinsSwimming = 36 // 3
% PenguinsEating = 36 // 3
% Query predicate to run the program and get the result
query(PenguinsLeft) :-
calculate_penguins_left(36, PenguinsSwimming, PenguinsEating, PenguinsLeft).
% Uncomment the following line to run the query
% ?- query(PenguinsLeft).
%query(PenguinsLeft).