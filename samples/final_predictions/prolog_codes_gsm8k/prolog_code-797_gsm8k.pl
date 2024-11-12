% Define the prices per pound for each fruit
price_per_pound(peaches, 2.00).
price_per_pound(plums, 1.00).
price_per_pound(apricots, 3.00).
% Calculate the total cost of fruit based on the quantities picked
total_cost(TotalCost) :-
price_per_pound(peaches, PricePeaches),
price_per_pound(plums, PricePlums),
price_per_pound(apricots, PriceApricots),
CostPeaches is PricePeaches * 6,
CostPlums is PricePlums * 8,
CostApricots is PriceApricots * 6,
TotalCost is CostPeaches + CostPlums + CostApricots.
% Query predicate to find the total cost of fruit picked by Winston
query(TotalCost) :-
total_cost(TotalCost).
% Uncomment the line below to run the query
% ?- query(TotalCost).
%query(TotalCost).