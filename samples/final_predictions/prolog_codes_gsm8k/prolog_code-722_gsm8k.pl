% Define the total amount and other known values
total_amount(100). % Assumed total amount is $100
gerald_ratio([3, 2]). % Assumed ratio of division between Gerald and Julia
gerald_spent(10). % Assumed amount Gerald spent on a book
% Calculate the amount of money Gerald had left after spending on the book
money_left(TotalAmount, GeraldRatio, GeraldSpent, MoneyLeft) :-
sum_list(GeraldRatio, TotalParts),
nth0(0, GeraldRatio, GeraldShare),
GeraldReceived is (GeraldShare / TotalParts) * TotalAmount,
MoneyLeft is GeraldReceived - GeraldSpent.
% Query predicate to find the amount of money Gerald had left
query(MoneyLeft) :-
total_amount(TotalAmount),
gerald_ratio(GeraldRatio),
gerald_spent(GeraldSpent),
money_left(TotalAmount, GeraldRatio, GeraldSpent, MoneyLeft).
% Uncomment the line below to run the query
% query(MoneyLeft).
%query(MoneyLeft).