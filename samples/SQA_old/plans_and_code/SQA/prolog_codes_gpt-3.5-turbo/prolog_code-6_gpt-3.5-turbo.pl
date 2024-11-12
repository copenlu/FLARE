% Assumed atom/predicate
favorable_condition(temperature(25)).
favorable_condition(ph(8)).
favorable_condition(salinity(0.1)).
% Define water sources with their conditions
water_source(lake, [temperature(30), ph(8), salinity(0.1)]).
% Define conducive conditions for Vibrio cholerae
favorable_condition(temperature(25_40)).
favorable_condition(ph(7.5_9)).
favorable_condition(salinity(0.5)).
% Rule to check if a water source is contaminated
is_contaminated(Source) :-
water_source(Source, Conditions),
check_conditions(Conditions).
check_conditions([]).
check_conditions([H|T]) :-
favorable_condition(H),
check_conditions(T).
% Symptoms and prevention
symptoms(cholera, [diarrhea, dehydration, nausea]).
prevention(cholera, [boil_water, use_sanitation, wash_hands]).
% Querying the system
query :-
is_contaminated(lake),
symptoms(cholera, Symptoms),
prevention(cholera, Methods).
%query.