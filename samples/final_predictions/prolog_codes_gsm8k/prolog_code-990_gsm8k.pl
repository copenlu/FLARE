% Define the total number of brownies Greta had
total_brownies(GretaMade, OfficeBrownies, SurprisePartyBrownies, BrowniesEaten, TotalBrownies) :-
TotalBrownies is GretaMade + OfficeBrownies + SurprisePartyBrownies - BrowniesEaten.
% Define the number of leftover brownies
leftover_brownies(TotalBrownies, BrowniesEaten, LeftoverBrownies) :-
LeftoverBrownies is TotalBrownies - BrowniesEaten.
% Predicate to encapsulate the entire calculation and output the number of leftover brownies
calculate_leftover_brownies(LeftoverBrownies) :-
total_brownies(12, 6, 48, 18, TotalBrownies),  % Values given in the problem
leftover_brownies(TotalBrownies, 18, LeftoverBrownies).
% Query to find the number of leftover brownies
query(LeftoverBrownies) :-
calculate_leftover_brownies(LeftoverBrownies).
% Uncomment the following line to run the query
% ?- query(LeftoverBrownies).
%query(LeftoverBrownies).