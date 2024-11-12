% Define the rule for calculating the total money in cents
total_money(NumQuarters, NumNickels, NumDimes, TotalMoney) :-
TotalQuartersValue is NumQuarters * 25,
TotalNickelsValue is NumNickels * 5,
TotalDimesValue is NumDimes * 10,
TotalMoney is TotalQuartersValue + TotalNickelsValue + TotalDimesValue.
% Define a predicate to execute the specific query with given values
query(TotalMoney) :-
total_money(1, 2, 7, TotalMoney).
% Uncomment the line below to run the query
% ?- query(TotalMoney).
%query(TotalMoney).