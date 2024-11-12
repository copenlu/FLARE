% Define the costs and earnings
jacket_cost(30).
shoes_cost(20).
earnings_babysitting(5).
earnings_mowing(4).
initial_savings(10).
% Calculate total earnings
total_earnings(TimesMow, TotalEarnings) :-
earnings_babysitting * 4 + earnings_mowing * TimesMow + initial_savings.
% Calculate total cost of jacket and shoes
total_cost(TotalCost) :-
jacket_cost(JacketCost),
shoes_cost(ShoesCost),
TotalCost is JacketCost + (ShoesCost * 2).
% Determine the number of times Sara needs to mow the lawn
times_to_mow(TimesMow) :-
total_earnings(TimesMow, TotalEarnings),
total_cost(TotalCost),
TotalCost =< TotalEarnings.
% Query predicate to run the program and get the result
query(TimesMow) :-
times_to_mow(TimesMow).
% Uncomment the following line to run the query
% ?- query(TimesMow).
%query(TimesMow).