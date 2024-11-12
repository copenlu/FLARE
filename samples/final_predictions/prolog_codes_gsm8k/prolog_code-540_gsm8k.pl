% Define the time taken for one person to paint a whole house
time_to_paint_one_person(10). % One person can paint a whole house in 10 days
% Calculate the time taken for 5 people to paint a whole house in hours
time_to_paint_five_people(TimeInHours) :-
time_to_paint_one_person(Days),
TotalDays is Days / 5, % Divide by the number of people
TimeInHours is TotalDays * 24. % Convert days to hours
% Query predicate to run the program and get the result
query(TimeInHours) :-
time_to_paint_five_people(TimeInHours).
% Uncomment the following line to run the query
% ?- query(TimeInHours).
%query(TimeInHours).