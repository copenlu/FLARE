% Define a rule to calculate the total value of quarters and dimes
total_value(NumQuarters, NumDimes, TotalValue) :-
QuarterValue is NumQuarters * 25,
DimeValue is NumDimes * 10,
TotalValue is QuarterValue + DimeValue.
% Define a rule to calculate the remaining amount after buying the can of pop
remaining_amount(TotalValue, Cost, Remaining) :-
Remaining is TotalValue - Cost.
% Given values
NumQuarters = 5,
NumDimes = 2,
CostOfPop = 55.
% Calculate the total value of coins
total_value(NumQuarters, NumDimes, TotalValue),
% Calculate the remaining amount after buying the can of pop
remaining_amount(TotalValue, CostOfPop, Remaining).
% Query predicate to get the remaining amount in cents
query(Remaining) :-
remaining_amount(TotalValue, CostOfPop, Remaining).
% Uncomment the following line to run the query
% query(Remaining).
%query(Remaining).