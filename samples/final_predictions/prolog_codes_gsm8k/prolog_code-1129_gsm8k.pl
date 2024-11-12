% Define the rule to calculate the new balance on Sheila's credit card
calculate_new_balance(InitialCharge, ReturnedItemCost, FryingPanCost, TowelsCost, NewBalance) :-
AdjustedTotal is InitialCharge - ReturnedItemCost,  % Calculate the adjusted total after returning the item
FryingPanDiscountedCost is FryingPanCost - (FryingPanCost * 0.20),  % Calculate the cost of the frying pan after discount
TowelsDiscountedCost is TowelsCost - (TowelsCost * 0.10),  % Calculate the cost of the towels after discount
NewBalance is AdjustedTotal + FryingPanDiscountedCost + TowelsDiscountedCost.  % Calculate the new balance
% Query to find the new balance on Sheila's credit card
query_new_balance(NewBalance) :-
calculate_new_balance(85.00, 15.00, 20.00, 30.00, NewBalance).
% Define a predicate that returns the correct numerical answer when queried
query(NewBalance) :-
query_new_balance(NewBalance).
% Uncomment the following line to run the query
% ?- query(NewBalance).
%query(NewBalance).