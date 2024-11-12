% Define initial animals on the farm
initial_animals(cows, 50).
initial_animals(chickens, 20).
% Define daily additions brought by Milkie Cows Limited and Broilers Limited
daily_additions(cows, 20).
daily_additions(chickens, 10).
% Define the total number of days in three weeks
total_days(21).
% Define the predicate to calculate the total animals after three weeks
total_animals_after_three_weeks(TotalCows, TotalChickens) :-
initial_animals(cows, InitialCows),
initial_animals(chickens, InitialChickens),
daily_additions(cows, DailyCows),
daily_additions(chickens, DailyChickens),
total_days(TotalDays),
TotalCows is InitialCows + (DailyCows * TotalDays),
TotalChickens is InitialChickens + (DailyChickens * TotalDays).
% Query predicate to run the program and get the result
query(TotalCows, TotalChickens) :-
total_animals_after_three_weeks(TotalCows, TotalChickens).
% Uncomment the following line to run the query
% ?- query(TotalCows, TotalChickens).
%query(TotalCows, TotalChickens).