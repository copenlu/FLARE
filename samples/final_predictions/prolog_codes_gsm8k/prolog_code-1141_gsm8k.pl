% Define the predicate to calculate the temperature after the drop
temperature_drop(InitialTemp, TempAfterDrop) :-
TempAfterDrop is InitialTemp - 8.
% Define the predicate to calculate the final temperature after the increase
temperature_increase(TempAfterDrop, FinalTemp) :-
FinalTemp is TempAfterDrop + 3.
% Define the predicate to calculate the final temperature in the morning
final_temperature(FinalTemp) :-
temperature_drop(2, TempAfterDrop),  % Initial temperature is 2 degrees Celsius
temperature_increase(TempAfterDrop, FinalTemp).
% Query predicate to run the program and get the result
query(FinalTemp) :-
final_temperature(FinalTemp).
% Uncomment the following line to run the query
% ?- query(FinalTemp).
%query(FinalTemp).