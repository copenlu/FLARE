% Define a rule to calculate the total liters of water collected every day
total_water_collected(DailyLiters) :-
MorningPails = 5,  % Assumed atom/predicate
AfternoonPails = 6,  % Assumed atom/predicate
WaterPerPail = 5,  % Assumed atom/predicate
MorningLiters is MorningPails * WaterPerPail,
AfternoonLiters is AfternoonPails * WaterPerPail,
DailyLiters is MorningLiters + AfternoonLiters.
% Define a query predicate to find out the total liters of water collected every day
query(DailyLiters) :-
total_water_collected(DailyLiters).
% Uncomment the line below to run the query in SWI-Prolog
% ?- query(DailyLiters).
%query(DailyLiters).