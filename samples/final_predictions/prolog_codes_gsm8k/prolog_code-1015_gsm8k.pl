% Facts
starting_temperature(25).
cooling_rate(low, 2).
cooling_rate(high, 3).
warming_rate(2).
% Rules
calculate_cooling_effect(Time, Setting, CoolingEffect) :-
cooling_rate(Setting, Rate),
CoolingEffect is Rate * Time.
calculate_warming_effect(Time, WarmingEffect) :-
warming_rate(Rate),
WarmingEffect is Rate * Time.
calculate_final_temperature(StartingTemp, LowTime, HighTime, OffTime, FinalTemp) :-
calculate_cooling_effect(LowTime, low, LowCooling),
calculate_cooling_effect(HighTime, high, HighCooling),
calculate_warming_effect(OffTime, Warming),
FinalTemp is StartingTemp - LowCooling - HighCooling + Warming.
calculate_temperature_difference(StartingTemp, FinalTemp, Difference) :-
Difference is StartingTemp - FinalTemp.
% Query predicate to find the temperature difference
query(Difference) :-
starting_temperature(StartingTemp),
calculate_final_temperature(StartingTemp, 3, 4, 2, FinalTemp),
calculate_temperature_difference(StartingTemp, FinalTemp, Difference).
% Uncomment the line below to run the query
% query(Difference).
%query(Difference).