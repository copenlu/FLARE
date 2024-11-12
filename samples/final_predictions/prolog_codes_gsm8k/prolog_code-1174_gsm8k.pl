% Define the cost per rock (assumed known)
cost_per_rock(5).  % Assumed cost per rock is $5
% Define the selling price per rock (assumed known)
selling_price(7).  % Assumed selling price per rock is $7
% Define a predicate to calculate the total number of rocks Adam can buy with his initial investment
total_rocks(InitialInvestment, TotalRocks) :-
cost_per_rock(Cost),
TotalRocks is InitialInvestment // Cost.
% Define a predicate to calculate the number of rocks sold based on the percentage
rocks_sold(TotalRocks, Percentage, SoldRocks) :-
SoldRocks is round(TotalRocks * Percentage / 100).
% Define a predicate to calculate the money lost from unsold rocks
money_lost(InitialInvestment, SoldRocks, Cost, MoneyLost) :-
total_rocks(InitialInvestment, TotalRocks),
UnsoldRocks is TotalRocks - SoldRocks,
MoneyLost is UnsoldRocks * Cost.
% Query predicate to run the program and get the result
query(MoneyLost) :-
InitialInvestment = 100,  % Adam's initial investment is $100
PercentageSold = 60,  % Adam sells 60% of his inventory
cost_per_rock(Cost),
total_rocks(InitialInvestment, TotalRocks),
rocks_sold(TotalRocks, PercentageSold, SoldRocks),
money_lost(InitialInvestment, SoldRocks, Cost, MoneyLost).
% Uncomment the following line to run the query
% ?- query(MoneyLost).
%query(MoneyLost).