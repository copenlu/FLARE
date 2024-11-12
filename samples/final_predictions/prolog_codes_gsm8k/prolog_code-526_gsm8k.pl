% Define the initial amount of money Julie had
initial_money(500).
% Calculate the amount spent on clothes (20% of initial money)
spent_on_clothes(Spent) :-
initial_money(Initial),
Spent is 0.2 * Initial.
% Calculate the remaining money after buying clothes
remaining_after_clothes(Remaining) :-
initial_money(Initial),
spent_on_clothes(Spent),
Remaining is Initial - Spent.
% Calculate the amount spent on CDs (25% of remaining money)
spent_on_cds(Spent) :-
remaining_after_clothes(Remaining),
Spent is 0.25 * Remaining.
% Calculate the final amount of money Julie has left
money_left(MoneyLeft) :-
remaining_after_clothes(Remaining),
spent_on_cds(Spent),
MoneyLeft is Remaining - Spent.
% Query predicate to run the program and get the result
query(MoneyLeft) :-
money_left(MoneyLeft).
% Uncomment the following line to run the query
% ?- query(MoneyLeft).
%query(MoneyLeft).