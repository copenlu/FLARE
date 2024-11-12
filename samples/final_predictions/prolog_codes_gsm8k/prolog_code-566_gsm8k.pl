% Define the commission predicate to calculate the commission based on sales amount
commission(Sales, Commission) :-
Sales =< 1000,
Commission is Sales * 0.3.
commission(Sales, Commission) :-
Sales > 1000,
FirstCommission is 1000 * 0.3,
RemainingSales is Sales - 1000,
RemainingCommission is RemainingSales * 0.4,
Commission is FirstCommission + RemainingCommission.
% Define the earnings predicate to calculate total earnings based on sales amount
earnings(Sales, TotalEarnings) :-
commission(Sales, TotalEarnings).
% Query predicate to run the program and get the result
query(TotalEarnings) :-
earnings(2500, TotalEarnings).
% Uncomment the following line to run the query
% ?- query(TotalEarnings).
%query(TotalEarnings).