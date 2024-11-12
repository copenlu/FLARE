% Define the rule to calculate the percentage of semi-automatic cars
percentage_semi_automatic(TotalCars, AutomaticCars, ManualCars, SemiAutomaticPercentage) :-
SemiAutomaticCars is TotalCars - AutomaticCars - ManualCars,
SemiAutomaticPercentage is (SemiAutomaticCars / TotalCars) * 100.
% Query to find the percentage of semi-automatic cars
query(SemiAutomaticPercentage) :-
percentage_semi_automatic(20, 12, 4, SemiAutomaticPercentage).
% Uncomment the following line to run the query and find out the percentage of semi-automatic cars
% ?- query(SemiAutomaticPercentage).
%query(SemiAutomaticPercentage).