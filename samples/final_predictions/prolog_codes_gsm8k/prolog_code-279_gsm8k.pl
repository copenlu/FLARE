% Predicate to calculate the total cost of items purchased
% Params: PriceCocoa, PriceLaundry, PricePasta, TotalCost
total_cost(PriceCocoa, PriceLaundry, PricePasta, TotalCost) :-
TotalCost is PriceCocoa + PriceLaundry + PricePasta.
% Predicate to calculate the change to be given back
% Params: TotalCost, AmountPaid, Change
change(TotalCost, AmountPaid, Change) :-
Change is AmountPaid - TotalCost.
% Main predicate to compute the change to be given back
% Params: Change
calculate_change(Change) :-
% Constants
PriceCocoa = 4.20,
PriceLaundry = 9.45,
PricePasta = 1.35,
AmountPaid = 20,
% Calculate total cost
total_cost(PriceCocoa, PriceLaundry, PricePasta, TotalCost),
% Calculate change
change(TotalCost, AmountPaid, Change).
% Query predicate to get the change to be given back
query(Change) :-
calculate_change(Change).
% Uncomment the following line to run the query
% query(Change).
%query(Change).