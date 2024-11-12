% Define the rule to calculate the total cost
total_cost(Dozens, Cost) :- Cost is Dozens * 2.40 * 12.
% Define the rule to calculate the total revenue
total_revenue(Dozens, Revenue) :- TotalEggs is Dozens * 12, Revenue is TotalEggs // 3.
% Define the rule to calculate the profit
calculate_profit(Cost, Revenue, Profit) :- Profit is Revenue - Cost.
% Query to find Rose's profit
query_profit(Dozens, Profit) :-
total_cost(Dozens, Cost),
total_revenue(Dozens, Revenue),
calculate_profit(Cost, Revenue, Profit).
% Define a predicate that returns the correct numerical answer when queried
query(Profit) :-
query_profit(5, Profit).
% Uncomment the following line to run the query
% ?- query(Profit).
%query(Profit).