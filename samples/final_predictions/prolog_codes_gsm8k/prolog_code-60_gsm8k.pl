% Define the rule to calculate the final price of groceries
final_price_groceries(TotalBill, FinalPrice) :-
TotalAmountPaid is TotalBill + 3.00, % Add the $3.00 delivery charge
TotalAmountWithFee is TotalAmountPaid + (TotalAmountPaid * 0.25), % Add the 25% fee
TotalAmountWithTip is TotalAmountWithFee + 4.00, % Add the $4.00 tip
FinalPrice is TotalAmountWithTip.
% Query to find the final price of Stephen's groceries
query_final_price_groceries(FinalPrice) :-
final_price_groceries(40.00, FinalPrice).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_final_price_groceries(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).