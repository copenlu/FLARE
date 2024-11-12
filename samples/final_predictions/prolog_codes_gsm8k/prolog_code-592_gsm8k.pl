% Define the rule to calculate the average number of birds per day
average_birds_per_day(TotalBirds, TotalDays, Average) :-
Average is TotalBirds / TotalDays.
% Calculate the total number of birds Mack saw over the week
total_birds_seen(TotalBirds) :-
TotalBirds is 50 + 50 + 0 + 120 + 120 + 20 + 90.
% Define the total number of days in the week
total_days_in_week(7).
% Query to find the average number of birds Mack saw per day
query_average_birds_per_day(Average) :-
total_birds_seen(TotalBirds),
total_days_in_week(TotalDays),
average_birds_per_day(TotalBirds, TotalDays, Average).
% Define a predicate that returns the correct numerical answer when queried
query(Average) :-
query_average_birds_per_day(Average).
% Uncomment the following line to run the query
% ?- query(Average).
%query(Average).