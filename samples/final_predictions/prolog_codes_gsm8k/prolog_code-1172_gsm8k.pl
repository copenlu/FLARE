% Define the total number of passengers on the bus
total_passengers(84).
% Define the ratio of women on the bus
women_ratio(9, 14).  % Assumed ratio of women to total parts in the ratio
% Calculate the initial number of women on the bus
calculate_initial_women(TotalPassengers, InitialWomen) :-
women_ratio(WomenParts, TotalParts),
InitialWomen is (WomenParts / TotalParts) * TotalPassengers.
% Calculate the number of women remaining after some alight
calculate_remaining_women(InitialWomen, AlightingWomen, RemainingWomen) :-
RemainingWomen is InitialWomen - AlightingWomen.
% Query predicate to find the number of women remaining on the bus
query(RemainingWomen) :-
total_passengers(TotalPassengers),
calculate_initial_women(TotalPassengers, InitialWomen),
AlightingWomen is 20,  % Assumed number of women alighting
calculate_remaining_women(InitialWomen, AlightingWomen, RemainingWomen).
% Uncomment the line below to run the query
% query(RemainingWomen).
%query(RemainingWomen).