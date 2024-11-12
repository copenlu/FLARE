% Define earnings for each type of bike
earnings_per_bike(bicycle, Earnings) :-
Earnings is 2 * 0.25. % 2 tires per bicycle
earnings_per_bike(tricycle, Earnings) :-
Earnings is 3 * 0.25. % 3 tires per tricycle
earnings_per_bike(unicycle, Earnings) :-
Earnings is 1 * 0.25. % 1 tire per unicycle
% Define total earnings for the day
total_earnings(DailyEarnings) :-
earnings_per_bike(bicycle, BicycleEarnings),
earnings_per_bike(tricycle, TricycleEarnings),
earnings_per_bike(unicycle, UnicycleEarnings),
DailyEarnings is BicycleEarnings * 5 + TricycleEarnings * 3 + UnicycleEarnings.
% Query to find out how much money Shawnda made that day
query(TotalEarnings) :-
total_earnings(TotalEarnings).
% Uncomment the following line to run the query and find out the total earnings for the day.
% ?- query(TotalEarnings).
%query(TotalEarnings).