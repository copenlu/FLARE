% Define a predicate to calculate the daily pounds of insects needed by a flock of ducks
insects_needed_per_day(Ducks, WeeklyRequirement, DailyRequirement) :-
% Calculate the total weekly requirement for the flock of ducks
TotalWeeklyRequirement is Ducks * WeeklyRequirement,
% Calculate the daily requirement by dividing the weekly requirement by 7 days
DailyRequirement is TotalWeeklyRequirement / 7.
% Define a query predicate to find out the daily pounds of insects needed by a flock of 10 ducks
query(DailyRequirement) :-
% Given 10 ducks and a weekly requirement of 3.5 pounds
insects_needed_per_day(10, 3.5, DailyRequirement).
% Uncomment the line below to run the query in SWI-Prolog
% query(DailyRequirement).
%query(DailyRequirement).