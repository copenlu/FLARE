% Define the cost per pack of candles
cost_per_pack(3).  % Assumed cost of a pack of 5 candles is $3
% Calculate the cost per candle based on the pack price
cost_per_candle(PackPrice, CostPerCandle) :-
CostPerCandle is PackPrice / 5.
% Calculate the total number of candles needed for both sons
total_candles_needed(Age1, Age2, TotalCandles) :-
TotalCandles is Age1 + Age2.
% Calculate the total cost based on the number of candles and cost per candle
total_cost(TotalCandles, Cost) :-
cost_per_pack(PackPrice),
cost_per_candle(PackPrice, CostPerCandle),
Cost is TotalCandles * CostPerCandle.
% Query predicate to find the total cost of candles for James' sons
query(TotalCost) :-
total_candles_needed(12, 8, TotalCandles),  % Sons' ages are 12 and 8
total_cost(TotalCandles, TotalCost).
% Uncomment the line below to run the query
% query(TotalCost).
%query(TotalCost).