% Define the number of petals for each type of flower
petals(flower1, 5).
petals(flower2, 6).
petals(flower3, 4).
petals(flower4, 7).
% Calculate the total number of petals for each type of flower
total_petals(Type, NumFlowers, Total) :-
petals(Type, Petals),
Total is Petals * NumFlowers.
% Calculate the total number of petals on the flowers in the vase
total_petals_in_vase(Total) :-
total_petals(flower1, 3, Total1),
total_petals(flower2, 4, Total2),
total_petals(flower3, 5, Total3),
total_petals(flower4, 6, Total4),
Total is Total1 + Total2 + Total3 + Total4 - 4. % Subtract 4 petals for the flowers that were dropped
% Query to calculate the total number of petals on the flowers in the vase
query(Total) :-
total_petals_in_vase(Total).
% Uncomment the following line to run the query and calculate the total number of petals in the vase
% ?- query(Total).
%query(Total).