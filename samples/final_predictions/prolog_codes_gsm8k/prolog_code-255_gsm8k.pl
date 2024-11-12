% Define the rule for calculating total cost
total_cost(NumBags, WeightPerBag, CostPerPound, TotalCost) :-
TotalWeight is NumBags * WeightPerBag,
TotalCost is TotalWeight * CostPerPound.
% Define the values for the chef's purchase
% Assumed atom/predicate
query(TotalCost) :-
NumBags = 4,
WeightPerBag = 50,
CostPerPound = 1.50,
total_cost(NumBags, WeightPerBag, CostPerPound, TotalCost).
% Uncomment the line below to run the query
% ?- query(TotalCost).
%query(TotalCost).