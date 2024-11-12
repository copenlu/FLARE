% Define the predicate to calculate the total number of people helped
calculate_total_people_helped(TotalPeople) :-
TotalDays is 31 + 19, % Total days between March 1st and April 19th
DaysOff is round(0.20 * TotalDays), % Calculate the number of days off (20%)
WorkingDays is TotalDays - DaysOff, % Calculate the number of working days
PeoplePerDay is 2 * 3, % Calculate the number of people helped per day (2 people per hour for 3 hours)
TotalPeople is PeoplePerDay * WorkingDays. % Calculate the total number of people helped
% Query to find the total number of people Billy helps
query_total_people_helped(TotalPeople) :-
calculate_total_people_helped(TotalPeople).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_total_people_helped(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).