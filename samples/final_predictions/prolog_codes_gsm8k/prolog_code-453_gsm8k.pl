% Predicate to calculate temperature increase due to baking
temperature_increase(BakingHours, Increase) :- Increase is BakingHours * 5.
% Predicate to calculate temperature decrease due to opening the window
temperature_decrease(WindowTime, Decrease) :- Decrease is (WindowTime / 10) * 2.
% Predicate to calculate final temperature of the house
final_temperature(InitialTemp, Increase, Decrease, FinalTemp) :- FinalTemp is InitialTemp + Increase - Decrease.
% Assumed initial temperature of the house
initial_temperature(40).
% Assumed baking hours and window time
baking_hours(3).
window_time(30).
% Main predicate to calculate the final temperature
final_temperature_calculation(FinalTemp) :-
initial_temperature(InitialTemp),
baking_hours(BakingHours),
window_time(WindowTime),
temperature_increase(BakingHours, Increase),
temperature_decrease(WindowTime, Decrease),
final_temperature(InitialTemp, Increase, Decrease, FinalTemp).
% Query to find out the final temperature of the house
query(FinalTemp) :-
final_temperature_calculation(FinalTemp).
% Uncomment the following line to run the query
% ?- query(FinalTemp).
%query(FinalTemp).