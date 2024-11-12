% Define the daily_savings predicate to calculate Marisa's daily savings
daily_savings(Savings) :-
Savings is 5 - (4 * 0.25).  % Marisa's pocket money minus the cost of 4 lollipops
% Define the total_savings predicate to calculate the total amount saved over 5 days
total_savings(Total) :-
daily_savings(Daily),  % Get Marisa's daily savings
Total is Daily * 5.  % Calculate total savings over 5 days
% Query predicate to run the program and get the result
query(Total) :-
total_savings(Total).
% Uncomment the following line to run the query
% ?- query(Total).
%query(Total).