% Define the rule to calculate total sunscreen needed
total_sunscreen_needed(HoursPerDay, Days, SunscreenPerHour, BottleSize, TotalSunscreen) :-
TotalSunscreen is HoursPerDay * Days * SunscreenPerHour.
% Define the rule to calculate number of bottles needed
bottles_needed(TotalSunscreen, BottleSize, Bottles) :-
Bottles is ceil(TotalSunscreen / BottleSize).
% Predicate to encapsulate the entire calculation and output the number of bottles needed
calculate_bottles_needed(Bottles) :-
total_sunscreen_needed(4, 8, 1, 8, TotalSunscreen),  % Given values in the problem
bottles_needed(TotalSunscreen, 8, Bottles).
% Query to find the number of bottles Pamela needs to pack
query(Bottles) :-
calculate_bottles_needed(Bottles).
% Uncomment the following line to run the query
% ?- query(Bottles).
%query(Bottles).