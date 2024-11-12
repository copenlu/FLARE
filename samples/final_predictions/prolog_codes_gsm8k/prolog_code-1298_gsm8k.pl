% Define the rule to calculate the total number of pairs of animal legs on the farm
total_legs_on_farm(TwoLeggedAnimals, FourLeggedAnimals, TotalLegs) :-
LegsFromTwoLegged is TwoLeggedAnimals * 2,    % Calculate total legs from 2-legged animals
LegsFromFourLegged is FourLeggedAnimals * 4,  % Calculate total legs from 4-legged animals
TotalLegs is LegsFromTwoLegged + LegsFromFourLegged.  % Calculate total pairs of animal legs
% Query to find the total number of pairs of animal legs on the farm
query_total_legs_on_farm(TotalLegs) :-
total_legs_on_farm(10, 15, TotalLegs).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_total_legs_on_farm(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).