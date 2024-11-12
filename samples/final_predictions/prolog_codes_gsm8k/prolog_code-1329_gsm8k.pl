% Define the cost of ingredients per pound
cost(passion_fruit, 6).
cost(jackfruit, 8).
cost(honey, 10).
% Define the weight of ingredients per jar
weight(passion_fruit, 2).
weight(jackfruit, 1.5).
weight(honey, 2).
% Define the selling price per jar
selling_price(50).
% Define rules to calculate total cost, revenue, and profit for 1 jar
total_cost_per_jar(TotalCost) :-
weight(passion_fruit, PassionFruitWeight),
weight(jackfruit, JackfruitWeight),
weight(honey, HoneyWeight),
cost(passion_fruit, PassionFruitCost),
cost(jackfruit, JackfruitCost),
cost(honey, HoneyCost),
TotalCost is PassionFruitWeight * PassionFruitCost + JackfruitWeight * JackfruitCost + HoneyWeight * HoneyCost.
total_revenue_per_jar(Revenue) :-
selling_price(Price),
Revenue is Price.
profit_per_jar(Profit) :-
total_revenue_per_jar(Revenue),
total_cost_per_jar(Cost),
Profit is Revenue - Cost.
% Define a rule to calculate profit from selling 10 jars
profit_from_10_jars(Profit) :-
profit_per_jar(PerJarProfit),
Profit is PerJarProfit * 10.
% Define a query predicate to find the profit from selling 10 jars
query(Profit) :-
profit_from_10_jars(Profit).
% Uncomment the line below to run the query
% ?- query(Profit).
%query(Profit).