% Define the rule for calculating the total cost of hot dogs
total_hot_dog_cost(NumGuests, HotDogsPerGuest, HotDogsLeftOver, HotDogsPerPack, CostPerPack, TotalCost) :-
TotalHotDogsNeeded is (NumGuests * HotDogsPerGuest) + HotDogsLeftOver,
PacksNeeded is ceil(TotalHotDogsNeeded / HotDogsPerPack),
TotalCost is PacksNeeded * CostPerPack.
% Define a predicate to execute the specific query with given values
query(TotalCost) :-
total_hot_dog_cost(20, 2, 4, 6, 2, TotalCost).
% Uncomment the line below to run the query
% ?- query(TotalCost).
%query(TotalCost).