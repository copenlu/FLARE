% Define initial goat counts in each farm
initial_goat_count(farm_x, 55).
initial_goat_count(farm_y, 45).
% Define the number of goats sold from each farm
goats_sold(farm_x, 10).
goats_sold(farm_y, 20).
% Calculate the remaining goats in each farm
remaining_goats(Farm, Remaining) :-
initial_goat_count(Farm, InitialCount),
goats_sold(Farm, Sold),
Remaining is InitialCount - Sold.
% Calculate the total goats left in both farms
total_goats_left(Total) :-
remaining_goats(farm_x, RemainingX),
remaining_goats(farm_y, RemainingY),
Total is RemainingX + RemainingY.
% Query predicate to find the total goats left in both farms
query(TotalGoatsLeft) :-
total_goats_left(TotalGoatsLeft).
% Uncomment the line below to run the query
% query(TotalGoatsLeft).
%query(TotalGoatsLeft).