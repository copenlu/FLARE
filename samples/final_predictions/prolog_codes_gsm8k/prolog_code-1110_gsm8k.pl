% Define the cost of a single banana and a bunch of bananas
cost_per_banana(0.80).
cost_per_bunch(3.00).
% Define the number of bunches and average bananas per bunch
num_bunches(10).
avg_bananas_per_bunch(4).
% Calculate the total cost of buying bananas individually
total_cost_individual_bananas(TotalCostIndividual) :-
num_bunches(N),
avg_bananas_per_bunch(Avg),
cost_per_banana(Cost),
TotalBananas is N * Avg,
TotalCostIndividual is TotalBananas * Cost.
% Calculate the total cost of buying bananas in bunches
total_cost_bunch_bananas(TotalCostBunch) :-
num_bunches(N),
cost_per_bunch(Cost),
TotalCostBunch is N * Cost.
% Calculate the amount of money saved by buying bananas in bunches
money_saved(MoneySaved) :-
total_cost_individual_bananas(TotalCostIndividual),
total_cost_bunch_bananas(TotalCostBunch),
MoneySaved is TotalCostIndividual - TotalCostBunch.
% Query to find out how much money Jenny saved
query(MoneySaved) :-
money_saved(MoneySaved).
% Uncomment the following line to run the query
% ?- query(MoneySaved).
%query(MoneySaved).