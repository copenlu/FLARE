% Define the initial amount Mulan has
initial_amount(40).
% Define the additional amount Mulan receives from her father
additional_amount(100).
% Define the cost of one pair of jeans
jeans_cost(30).
% Define the cost of the bag
bag_cost(20).
% Calculate the total expenses incurred by Mulan
total_expenses(TotalExpenses) :-
jeans_cost(JeansCost),
bag_cost(BagCost),
TotalExpenses is 2 * JeansCost + BagCost.
% Calculate the remaining amount Mulan has after deducting expenses
remaining_amount(RemainingAmount) :-
initial_amount(InitialAmount),
additional_amount(AdditionalAmount),
total_expenses(TotalExpenses),
RemainingAmount is InitialAmount + AdditionalAmount - TotalExpenses.
% Query predicate to find the remaining amount Mulan has
query(RemainingAmount) :-
remaining_amount(RemainingAmount).
% Uncomment the line below to run the query
% query(RemainingAmount).
%query(RemainingAmount).