% Define the fees for each park
fee_park1(adult, 26).
fee_park1(child, 12).
fee_park2(adult, 14).
fee_park2(child, 10).
% Calculate the total cost at the first park
total_cost_park1(TotalCost) :-
fee_park1(adult, AdultFee),
fee_park1(child, ChildFee),
TotalCost is 2 * AdultFee + 2 * ChildFee.
% Calculate the total cost at the second park
total_cost_park2(TotalCost) :-
fee_park2(adult, AdultFee),
fee_park2(child, ChildFee),
TotalCost is 2 * AdultFee + 2 * ChildFee.
% Calculate the savings by choosing the second park
savings(SavedAmount) :-
total_cost_park1(CostPark1),
total_cost_park2(CostPark2),
SavedAmount is CostPark1 - CostPark2.
% Query predicate to find the amount saved by choosing the second park
query(SavedAmount) :-
savings(SavedAmount).
% Uncomment the line below to run the query
% ?- query(SavedAmount).
%query(SavedAmount).