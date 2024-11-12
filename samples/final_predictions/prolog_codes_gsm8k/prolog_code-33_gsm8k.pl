% Define hours spent per week per dog
hours_per_week_per_dog(HoursPerDay, HoursPerWeek) :-
HoursPerWeek is HoursPerDay * 7.
% Define total hours spent per week for all dogs
total_hours_per_week(Dogs, HoursPerDay, HoursPerWeek) :-
hours_per_week_per_dog(HoursPerDay, HoursPerDog),
HoursPerWeek is Dogs * HoursPerDog.
% Predicate to encapsulate the entire calculation and output total hours per week
calculate_total_hours_per_week(TotalHours) :-
total_hours_per_week(10, 0.5, TotalHours).  % 10 dogs and 0.5 hours per day per dog
% Query to find the total hours John spends taking care of the dogs in a week
query(TotalHours) :-
calculate_total_hours_per_week(TotalHours).
% Uncomment the following line to run the query
% ?- query(TotalHours).
%query(TotalHours).