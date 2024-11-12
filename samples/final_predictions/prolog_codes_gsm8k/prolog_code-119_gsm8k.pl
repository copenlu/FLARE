% Define the ratio of sugar to water
sugar_water_ratio(7, 13).
% Calculate the fraction of sugar in the ratio
sugar_fraction(Fraction) :-
sugar_water_ratio(SugarParts, _),
TotalParts is SugarParts + 13,
Fraction is SugarParts / TotalParts.
% Calculate the number of teaspoonfuls of sugar Katy used
calculate_sugar_teaspoons(TotalParts, SugarTeaspoons) :-
sugar_fraction(Fraction),
SugarTeaspoons is Fraction * TotalParts.
% Query to find the number of teaspoonfuls of sugar Katy used
query(SugarTeaspoons) :-
calculate_sugar_teaspoons(120, SugarTeaspoons).
% Uncomment the following line to run the query and calculate the number of teaspoonfuls of sugar Katy used
% ?- query(SugarTeaspoons).
%query(SugarTeaspoons).