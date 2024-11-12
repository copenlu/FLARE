% Define the total_temperature predicate to calculate the final temperature after mixing water from both mugs
total_temperature(Mug1Temp, Mug2Temp, FinalTemp) :-
FinalTemp is ((4 * Mug1Temp) + Mug2Temp) / 5.
% Define the minimum_temperature predicate to calculate the minimum temperature required for the water in the second mug
minimum_temperature(Mug1Temp, MinTemp) :-
MinTemp is 40 - ((4 * Mug1Temp) / 5).
% Query predicate to run the program and get the result
query(MinTemp) :-
minimum_temperature(33, MinTemp).
% Uncomment the following line to run the query
% ?- query(MinTemp).
%query(MinTemp).