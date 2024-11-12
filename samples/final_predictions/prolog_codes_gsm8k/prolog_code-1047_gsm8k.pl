% Define facts
price_relation(3). % Price of large stuffed animal is 3 times the price of small stuffed animal
cost_small_animal(4). % Cost of a small stuffed animal
total_earnings(120). % Total earnings from sales
% Calculate number of small stuffed animals sold
calculate_small_animals(NumSmallAnimals) :-
cost_small_animal(CostSmall),
total_earnings(TotalEarnings),
price_relation(Relation),
NumSmallAnimals is TotalEarnings / (2 * CostSmall + Relation * CostSmall).
% Query to find the number of small stuffed animals sold
query(NumSmallAnimals) :-
calculate_small_animals(NumSmallAnimals).
% Uncomment the line below to run the query
% query(NumSmallAnimals).
%query(NumSmallAnimals).