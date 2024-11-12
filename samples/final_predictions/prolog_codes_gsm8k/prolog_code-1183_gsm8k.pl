% Define the number of carrots eaten on weekdays
carrots_on_weekdays(Carrots) :-
Carrots is 4 * 5. % 4 carrots each day for 5 weekdays
% Define the number of carrots eaten on the weekend
carrots_on_weekend(Carrots) :-
Carrots is 5 * 2. % 5 carrots each day for 2 days (Saturday and Sunday)
% Define the total number of carrots eaten in a week
total_carrots_weekly(TotalCarrots) :-
carrots_on_weekdays(WeekdayCarrots),
carrots_on_weekend(WeekendCarrots),
TotalCarrots is WeekdayCarrots + WeekendCarrots.
% Query predicate to get the total number of carrots eaten in a week
query(TotalCarrots) :-
total_carrots_weekly(TotalCarrots).
% Uncomment the following line to run the query
% ?- query(TotalCarrots).
%query(TotalCarrots).