% Define the yearly profit calculation
yearly_profit(Revenue, Cost, Profit) :-
Profit is Revenue - Cost.
% Define the total profit calculation over multiple years
total_profit(0, _, _, 0).
total_profit(Years, Revenue, Cost, TotalProfit) :-
Years > 0,
NewYears is Years - 1,
yearly_profit(Revenue, Cost, YearlyProfit),
total_profit(NewYears, Revenue, Cost, RemainingProfit),
TotalProfit is YearlyProfit + RemainingProfit.
% Calculate the number of years to start earning money
years_to_profit(InitialCost, Revenue, Cost, Years) :-
total_profit(Years, Revenue, Cost, TotalProfit),
TotalProfit >= InitialCost,
!.
years_to_profit(InitialCost, Revenue, Cost, Years) :-
NewYears is Years + 1,
years_to_profit(InitialCost, Revenue, Cost, NewYears).
% Calculate the number of years it will take before Carlos starts earning money
calculate_years_to_profit(Years) :-
InitialCost = 90,  % Cost to plant the lemon tree
Revenue = 7 * 1.5,  % Revenue from selling lemons
Cost = 3,  % Cost of watering and feeding the tree
years_to_profit(InitialCost, Revenue, Cost, 0, Years).
% Query to find the number of years before Carlos starts earning money
query(Years) :-
calculate_years_to_profit(Years).
% Uncomment the following line to run the query
% ?- query(Years).
%query(Years).