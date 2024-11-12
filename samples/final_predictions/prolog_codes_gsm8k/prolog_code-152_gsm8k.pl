% Define the rule to calculate the money given to the cashier
money_given_to_cashier(AdultCost, ChildCost, Change, MoneyGiven) :-
MoneyGiven is AdultCost + ChildCost + Change.
% Given values
AdultCost = 12,  % Assumed atom/predicate
ChildCost = 10,  % Assumed atom/predicate
Change = 8.     % Assumed atom/predicate
% Calculate the money given to the cashier
query(MoneyGiven) :-
money_given_to_cashier(AdultCost, ChildCost, Change, MoneyGiven).
% Uncomment the following line to run the query and find out the money given to the cashier
% ?- query(MoneyGiven).
%query(MoneyGiven).