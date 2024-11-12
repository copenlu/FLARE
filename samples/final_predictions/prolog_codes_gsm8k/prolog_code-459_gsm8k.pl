% Predicate to calculate total revenue from selling sneakers
total_revenue(Sold17, SoldRest, Revenue) :-
Revenue is (Sold17 * 20) + (SoldRest * 25).
% Predicate to calculate total cost of purchasing the case of sneakers
total_cost(CasePrice, Cost) :-
Cost is CasePrice.
% Predicate to calculate the salesman's profit
salesman_profit(Revenue, Cost, Profit) :-
Profit is Revenue - Cost.
% Main predicate to calculate the salesman's profit
salesman_profit_calculation(Sold17, SoldRest, CasePrice, Profit) :-
total_revenue(Sold17, SoldRest, Revenue),
total_cost(CasePrice, Cost),
salesman_profit(Revenue, Cost, Profit).
% Query to find out the salesman's profit
query(Profit) :-
salesman_profit_calculation(17, 48 - 17, 576, Profit).
% Uncomment the following line to run the query
% ?- query(Profit).
%query(Profit).