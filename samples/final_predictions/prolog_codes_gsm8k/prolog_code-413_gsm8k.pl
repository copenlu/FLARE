% Predicate to calculate energy consumption per day
energy_consumption_per_day(Hours, Watts, Energy) :-
Energy is Hours * Watts.
% Predicate to convert watts to kilowatts
watts_to_kilowatts(Watts, Kilowatts) :-
Kilowatts is Watts / 1000.
% Predicate to calculate energy saved per day
energy_saved_per_day(OriginalEnergy, ReducedEnergy, SavedEnergy) :-
SavedEnergy is OriginalEnergy - ReducedEnergy.
% Predicate to calculate total energy saved over a given number of days
total_energy_saved(PerDayEnergySaved, Days, TotalEnergySaved) :-
TotalEnergySaved is PerDayEnergySaved * Days.
% Main predicate to calculate the total energy saved by Mel over 30 days
mel_energy_saved(TotalEnergySaved) :-
energy_consumption_per_day(8, 900, OriginalEnergy),
energy_consumption_per_day(3, 900, ReducedEnergy),
energy_saved_per_day(OriginalEnergy, ReducedEnergy, PerDayEnergySaved),
total_energy_saved(PerDayEnergySaved, 30, TotalEnergySaved).
% Query predicate to find the total energy saved by Mel over 30 days
query(TotalEnergySaved) :-
mel_energy_saved(TotalEnergySaved).
% Uncomment the following line to run the query
% ?- query(TotalEnergySaved).
%query(TotalEnergySaved).