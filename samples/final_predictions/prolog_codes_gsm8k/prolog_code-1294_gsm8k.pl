% Define predicates for the number of people on each day
people_on_day(1, 50).
people_on_day(2, People) :- people_on_day(1, People1), People is People1 + 20.
people_on_day(3, People) :- people_on_day(2, People2), People is 2 * People2.
% Define predicate for the total number of people on the first three days
total_people_first_three_days(Total) :-
people_on_day(1, Day1),
people_on_day(2, Day2),
people_on_day(3, Day3),
Total is Day1 + Day2 + Day3.
% Define predicate for the average number of people for the rest of the week
average_people_rest_of_week(60).
% Define predicate for the total number of people for the rest of the week
total_people_rest_of_week(Total) :-
average_people_rest_of_week(Average),
Total is Average * 4.
% Define predicate for the total number of people for the entire week
total_people_entire_week(Total) :-
total_people_first_three_days(TotalFirstThreeDays),
total_people_rest_of_week(TotalRestOfWeek),
Total is TotalFirstThreeDays + TotalRestOfWeek.
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
total_people_entire_week(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).