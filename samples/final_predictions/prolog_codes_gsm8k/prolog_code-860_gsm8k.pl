% Define the milk produced by each cow per day
milk_per_cow(5).
% Define the current number of cows
current_cows(3).
% Calculate the total milk produced by the current cows
current_milk_production(MilkPerCow, CurrentCows, TotalMilk) :-
TotalMilk is MilkPerCow * CurrentCows.
% Calculate the additional cows needed to reach the desired milk production
additional_cows_needed(CurrentMilk, DesiredMilk, MilkPerCow, AdditionalCows) :-
AdditionalMilk is DesiredMilk - CurrentMilk,
AdditionalCows is AdditionalMilk // MilkPerCow.
% Define the desired milk production per day
desired_milk(25).
% Query predicate to find the number of additional cows needed
query(AdditionalCows) :-
milk_per_cow(MilkPerCow),
current_cows(CurrentCows),
current_milk_production(MilkPerCow, CurrentCows, CurrentMilk),
desired_milk(DesiredMilk),
additional_cows_needed(CurrentMilk, DesiredMilk, MilkPerCow, AdditionalCows).
% Uncomment the line below to run the query
% query(AdditionalCows).
%query(AdditionalCows).