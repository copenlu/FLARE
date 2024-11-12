% Define the predicate to calculate the new price of a share after a 50% increase
new_price_after_increase(OldPrice, NewPrice) :-
NewPrice is OldPrice + (0.5 * OldPrice).
% Define the predicate to calculate the new price of a share after a 25% decrease
new_price_after_decrease(OldPrice, NewPrice) :-
NewPrice is OldPrice - (0.25 * OldPrice).
% Define the predicate to calculate the final value of all shares after two years
final_value_of_shares(TotalShares, PricePerShare, FinalValue) :-
new_price_after_increase(PricePerShare, PriceAfterFirstYear),
new_price_after_decrease(PriceAfterFirstYear, PriceAfterSecondYear),
FinalValue is TotalShares * PriceAfterSecondYear.
% Query predicate to run the program and get the result
query(FinalValue) :-
final_value_of_shares(8, 8, FinalValue).
% Uncomment the following line to run the query
% ?- query(FinalValue).
%query(FinalValue).