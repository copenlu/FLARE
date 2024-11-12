% Define the rule to calculate the total time spent cleaning classrooms
total_time_cleaning(Classrooms, Time) :-
Time is Classrooms * 15.
% Define the rule to calculate the total time available to work
total_time_available(Days, Hours, Time) :-
Time is Days * Hours * 60.
% Define the rule to calculate the percentage of time spent cleaning classrooms
percentage_time_cleaning(Classrooms, Days, Hours, Percentage) :-
total_time_cleaning(Classrooms, TotalCleaningTime),
total_time_available(Days, Hours, TotalAvailableTime),
Percentage is (TotalCleaningTime / TotalAvailableTime) * 100.
% Query to find the percentage of time spent cleaning classrooms
query_percentage_time_cleaning(Percentage) :-
percentage_time_cleaning(80, 5, 8, Percentage).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_percentage_time_cleaning(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).