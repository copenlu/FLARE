% Define the rule for calculating money left
calculate_money_left(InitialAmount, MoneyLeft) :-
TotalSpent is 25 + 10,  % Total amount spent on food/snacks and rides
MoneyLeft is InitialAmount - TotalSpent.  % Calculate money left after spending
% Define a predicate to execute the specific query with given values
query(MoneyLeft) :-
calculate_money_left(50, MoneyLeft).  % Annika brought $50 initially
% Uncomment the line below to run the query
% ?- query(MoneyLeft).
%query(MoneyLeft).