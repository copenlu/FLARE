% Define the rule to calculate the remaining water in the tank after a certain number of days
remaining_water_in_tank(Days, RemainingWater) :-
InitialWaterInTank is 5000,  % Initial amount of water in the tank (half of the pool)
WaterUsedPerDay is 500,      % Rate at which water is emptied from the tank per day
RemainingWater is InitialWaterInTank - (WaterUsedPerDay * Days).  % Calculate remaining water in the tank
% Query to find the remaining water in the tank after 6 days
query_remaining_water_in_tank(RemainingWater) :-
remaining_water_in_tank(6, RemainingWater).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_remaining_water_in_tank(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).