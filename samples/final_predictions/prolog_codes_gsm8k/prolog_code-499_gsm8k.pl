% Define the number of horses and oats consumption per meal
horses(4).
oats_per_meal(5).
% Calculate total oats consumed by all horses in a day
total_oats_per_day(TotalOats) :-
horses(NumHorses),
oats_per_meal(OatsPerMeal),
TotalOats is NumHorses * OatsPerMeal * 2.
% Calculate total oats consumed by all horses in five days
total_oats_per_five_days(TotalOatsFiveDays) :-
total_oats_per_day(DailyOats),
TotalOatsFiveDays is DailyOats * 5.
% Calculate the number of bags needed for five days
bags_needed(Bags) :-
total_oats_per_five_days(TotalOats),
BagWeight = 50,  % Assumed weight of one bag of oats
Bags is ceil(TotalOats / BagWeight).
% Query to calculate the number of bags needed for five days
query(Bags) :-
bags_needed(Bags).
% Uncomment the following line to run the query and calculate the number of bags needed
% ?- query(Bags).
%query(Bags).