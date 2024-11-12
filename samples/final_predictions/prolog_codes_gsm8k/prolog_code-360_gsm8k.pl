% Define the predicate to calculate the number of plant pots April has left over
calculate_leftover_pots(LeftoverPots) :-
InitialPots = 100,  % Initial number of plant pots April has
PotsForDaisies = 30,  % Number of plant pots requested for daisies
PotsForRoses = 2 * PotsForDaisies,  % Twice the number of plant pots requested for roses
TotalDonatedPots is PotsForDaisies + PotsForRoses,  % Total number of plant pots donated
LeftoverPots is InitialPots - TotalDonatedPots.  % Calculate the number of plant pots left over
% Query predicate to run the program and get the result
query(LeftoverPots) :-
calculate_leftover_pots(LeftoverPots).
% Uncomment the following line to run the query
% ?- query(LeftoverPots).
%query(LeftoverPots).