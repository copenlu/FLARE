% Define the total_balls predicate to calculate the total number of balls after juggling for a certain number of weeks
total_balls(Weeks, Total) :-
Total is 3 + Weeks.
% Define the balls_after_accident predicate to calculate the number of balls Josh will be juggling with after the accident
balls_after_accident(Weeks, Caught, Lost, Remaining) :-
total_balls(Weeks, Total),
Remaining is Total - Lost.
% Query predicate to run the program and get the result
query(Remaining) :-
balls_after_accident(4, 2, 1, Remaining).
% Uncomment the following line to run the query
% ?- query(Remaining).
%query(Remaining).