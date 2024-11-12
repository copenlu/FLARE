% Define the optimal growing conditions for citrus plants
citrus_optimal_temperature(Min, Max) :- Min = 20, Max = 35. % in degrees Celsius
citrus_optimal_sunlight_hours(MinHours) :- MinHours = 5. % minimum hours of direct sunlight
citrus_optimal_soil(pH) :- pH = 6.5. % optimal soil pH level
% Define the climate characteristics of Ulaanbaatar
ulaanbaatar_temperature(WinterMin, SummerMax) :- WinterMin = -25, SummerMax = 20. % in degrees Celsius
ulaanbaatar_sunlight_hours(WinterHours, SummerHours) :- WinterHours = 3, SummerHours = 9. % sunlight hours in winter and summer
ulaanbaatar_frost_days(NumDays) :- NumDays = 225. % Assumed number of frost days
% Compare citrus requirements with Ulaanbaatar climate
temperature_suitable_for_citrus :-
citrus_optimal_temperature(CitrusMinTemp, CitrusMaxTemp),
ulaanbaatar_temperature(UlaanMinTemp, UlaanMaxTemp),
UlaanMaxTemp >= CitrusMinTemp,
UlaanMinTemp < CitrusMaxTemp.
sunlight_suitable_for_citrus :-
citrus_optimal_sunlight_hours(CitrusMinSunlightHours),
ulaanbaatar_sunlight_hours(_, UlaanSummerSunlightHours),
UlaanSummerSunlightHours >= CitrusMinSunlightHours.
% Evaluate the possibility of growing citrus in a greenhouse
greenhouse_feasible :-
ulaanbaatar_temperature(WinterMin, _),
WinterMin < 0, % Greenhouse needed if winter minimum is below 0 Celsius
citrus_optimal_temperature(CitrusMinTemp, _),
WinterMin < CitrusMinTemp.
% Main query to determine if growing citrus in Ulaanbaatar is feasible
query :-
(   temperature_suitable_for_citrus,
sunlight_suitable_for_citrus
;   greenhouse_feasible
).
% Uncomment the line below to run the query in Prolog environment
% ?- query.
% ?- query.