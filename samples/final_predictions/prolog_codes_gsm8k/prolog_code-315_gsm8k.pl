% Define the rate at which Joey loses weight per week
joey_rate_per_week(Rate) :-
Rate is 8 / 4.
% Define the rate at which Sandy loses weight per week
sandy_rate_per_week(Rate) :-
Rate is 8 / (4 * 4).
% Define the rule to calculate the number of weeks it will take Sandy to lose 8 pounds
weeks_to_lose_sandy(Weeks) :-
sandy_rate_per_week(SandyRate),
Weeks is 8 / SandyRate.
% Query predicate to run the program and get the result
query(Weeks) :-
weeks_to_lose_sandy(Weeks).
% Uncomment the following line to run the query
% ?- query(Weeks).
%query(Weeks).