% Define the value of $10 and $20 bills
bill_value(10).
bill_value(20).
% Calculate the total amount of money based on the number of bills
total_amount(Total) :-
Total is 4 * 10 + 6 * 20.
% Calculate the amount of money Ali has left after buying dinner
remaining_amount(AfterDinner) :-
total_amount(Total),
Half is Total / 2,
Remaining is Total - Half,
AfterDinner is Remaining - (3/5 * Remaining).
% Query to calculate the amount of money Ali has left after buying dinner
query(AfterDinner) :-
remaining_amount(AfterDinner).
% Uncomment the following line to run the query and calculate the remaining amount after buying dinner
% ?- query(AfterDinner).
%query(AfterDinner).