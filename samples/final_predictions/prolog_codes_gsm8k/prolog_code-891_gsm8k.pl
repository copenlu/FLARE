% Define the predicate to calculate the total cost of the phones
% Params: Number of phones, Price per phone, TotalCost
total_cost(5, 700, TotalCost) :-
TotalCost is 5 * 700.
% Define the predicate to calculate the amount of change
% Params: Amount paid by the buyer, Total cost of phones, Change
calculate_change(PaidAmount, TotalCost, Change) :-
Change is PaidAmount - TotalCost.
% Main predicate to calculate the amount of change needed to be given back
calculate_change_to_give_back(Change) :-
% Constants
PaidAmount = 4000,  % Amount paid by the buyer
% Calculate the total cost of the phones
total_cost(5, 700, TotalCost),
% Calculate the amount of change needed
calculate_change(PaidAmount, TotalCost, Change).
% Query predicate to get the amount of change needed to be given back
query(Change) :-
calculate_change_to_give_back(Change).
% Uncomment the following line to run the query
% query(Change).
%query(Change).