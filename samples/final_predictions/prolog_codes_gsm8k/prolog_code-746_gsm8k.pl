% Define the number of spools in each color
spools(light_blue, 15).
spools(dark_blue, 45).
spools(light_green, 40).
spools(dark_green, 50).
% Calculate the total number of blue spools
total_blue_spools(TotalBlueSpools) :-
spools(light_blue, LightBlue),
spools(dark_blue, DarkBlue),
TotalBlueSpools is LightBlue + DarkBlue.
% Calculate the total number of spools Candy has
total_spools(TotalSpools) :-
spools(light_blue, LightBlue),
spools(dark_blue, DarkBlue),
spools(light_green, LightGreen),
spools(dark_green, DarkGreen),
TotalSpools is LightBlue + DarkBlue + LightGreen + DarkGreen.
% Calculate the percentage of blue spools
percentage_blue_spools(Percentage) :-
total_blue_spools(TotalBlueSpools),
total_spools(TotalSpools),
Percentage is (TotalBlueSpools / TotalSpools) * 100.
% Query predicate to find the percentage of blue spools
query(Percentage) :-
percentage_blue_spools(Percentage).
% Uncomment the line below to run the query
% query(Percentage).
%query(Percentage).