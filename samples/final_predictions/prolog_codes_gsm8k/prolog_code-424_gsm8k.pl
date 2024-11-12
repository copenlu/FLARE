% Predicate to calculate the number of candles that will explode
exploding_candles(TotalCandles, ExplodingCandles) :-
ExplodingCandles is round(TotalCandles * 0.01).
% Predicate to calculate the number of candles that will smell like wet dog
wet_dog_candles(TotalCandles, WetDogCandles) :-
WetDogCandles is round(TotalCandles * 0.05).
% Predicate to calculate the number of candles that will both explode and smell like wet dog
both_defect_candles(TotalCandles, BothDefectCandles) :-
exploding_candles(TotalCandles, ExplodingCandles),
wet_dog_candles(TotalCandles, WetDogCandles),
BothDefectCandles is min(ExplodingCandles, WetDogCandles).
% Main predicate to calculate the number of candles with both defects
candles_with_defects(TotalCandles, BothDefectCandles) :-
both_defect_candles(TotalCandles, BothDefectCandles).
% Query to find out how many candles will both smell like wet dog and explode
query(BothDefectCandles) :-
candles_with_defects(50000, BothDefectCandles).
% Uncomment the following line to run the query
% ?- query(BothDefectCandles).
%query(BothDefectCandles).