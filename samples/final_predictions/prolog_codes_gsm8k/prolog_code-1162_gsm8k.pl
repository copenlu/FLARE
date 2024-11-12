% Define the total_saved predicate to calculate the total amount saved in a given number of weeks
total_saved(Weeks, Total) :-
Total is Weeks * 4.
% Define the remaining_amount predicate to calculate the remaining amount needed to reach $60
remaining_amount(TotalSaved, Remaining) :-
Remaining is 60 - TotalSaved.
% Define the additional_weeks predicate to calculate the number of additional weeks required to save the remaining amount
additional_weeks(Remaining, WeeksNeeded) :-
WeeksNeeded is Remaining / 4.
% Query predicate to run the program and get the result
query(WeeksNeeded) :-
total_saved(8, TotalSaved),  % Jane has saved $4 every week for 8 weeks
remaining_amount(TotalSaved, Remaining),  % Calculate the remaining amount needed to reach $60
additional_weeks(Remaining, WeeksNeeded).  % Calculate the number of additional weeks needed
% Uncomment the following line to run the query
% ?- query(WeeksNeeded).
%query(WeeksNeeded).