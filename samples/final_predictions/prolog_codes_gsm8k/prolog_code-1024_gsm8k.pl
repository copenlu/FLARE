% Define the rule to calculate the percentage of the watermelon each adult gets
calculate_percentage(TotalFamilyMembers, NumAdults, NumKids, PercentageAdult) :-
TotalSlices is TotalFamilyMembers,
SlicesPerAdult is NumAdults,
SlicesPerKid is NumKids,
TotalSlices is SlicesPerAdult + SlicesPerKid * 2, % Each adult gets twice as many slices as each kid
PercentageAdult is (SlicesPerAdult / TotalSlices) * 100.
% Query the rule with the given values
query(PercentageAdult) :-
calculate_percentage(6, 2, 4, PercentageAdult).
% Uncomment the line below to run the query
% query(PercentageAdult).
%query(PercentageAdult).